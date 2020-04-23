
System.DoFile("res/apps/paint/rpc_module.lua")

local make_paint = function()
	
	local paint = {}

	paint.__index = paint

	function paint:init()
		local vertex_shader_code = [[
			#version 450 core

			layout (location = 0) in vec2 aPos;

			void main() {
				gl_Position = vec4(aPos.xy, 0.0f, 1.0f);
			}
		]]

		local fragment_shader_code = [[
			#version 450 core

			out vec4 FragColor;

			uniform vec2 StartPos;
			uniform vec2 EndPos;
			uniform float BrushSize;
			uniform vec4 BrushColor;

			float DistanceFromLine(vec2 v, vec2 w, vec2 p) {
				float l2 = pow(length(v - w), 2);
				if (l2 == 0.0f) { return length(p - v); }

				float t = max(0, min(1, dot(p - v, w - v) / l2));
				vec2 projection = v + t * (w - v);
				return length(p - projection);
			}

			void main() {
				float dist = DistanceFromLine(StartPos, EndPos, gl_FragCoord.xy);
				if (dist <= BrushSize) {
					FragColor = BrushColor;
				} else {
					discard;
				}
			}
		]]

		self.shader = Shader.Create(vertex_shader_code, fragment_shader_code)

		local vertex_buffer = VertexBuffer.Create({
			-1.0,  1.0,
			 1.0,  1.0,
			 1.0, -1.0,
			-1.0,  1.0,
			 1.0, -1.0,
			-1.0, -1.0,
		})

		local buffer_layout = BufferLayout.Create()
		buffer_layout:BeginEntries()
		buffer_layout:AddEntry(DataType.Float2, 0, false)
		buffer_layout:EndEntries()

		vertex_buffer:SetBufferLayout(buffer_layout)

		self.vertex_array = VertexArray.Create()
		self.vertex_array:AddVertexBuffer(vertex_buffer)

		self.framebuffer = Framebuffer.Create(Vec2.New(Config.Width, Config.Height))

		self.previous_mouse_pos = Vec2.New(Input.RawMousePos.x, Config.Height - Input.RawMousePos.y)
		self.current_mouse_pos = self.previous_mouse_pos
		self.brush_size = 1.5
		self.brush_color = Vec4.New(1.0, 1.0, 0.0, 1.0)

		rpc:bind("draw_line", self.rpc_draw_line, self)		-- To draw line
		rpc:bind("clear", self.clear, self)					-- To clear screen
	end

	function paint:rpc_draw_line(start_x, start_y, end_x, end_y, brush_size, brush_color_x, brush_color_y, brush_color_z, brush_color_w)
		self:draw_line(Vec2.New(start_x, start_y), Vec2.New(end_x, end_y), brush_size, Vec4.New(brush_color_x, brush_color_y, brush_color_z, brush_color_w))
	end
	
	function paint:clear()
		self.framebuffer:Bind()
		self.framebuffer:Clear()
		self.framebuffer:UnBind()
	end

	function paint:update(dt)
		self.previous_mouse_pos = self.current_mouse_pos
		self.current_mouse_pos = Vec2.New(Input.RawMousePos.x, Config.Height - Input.RawMousePos.y)
		rpc:update()
	end

	function paint:draw_line(start_pos, end_pos, brush_size, brush_color)
		self.framebuffer:Bind()
		self.shader:Bind()
		self.vertex_array:Bind()

		self.shader:SetUniformVec2("StartPos", start_pos)
		self.shader:SetUniformVec2("EndPos", end_pos)
		self.shader:SetUniformFloat("BrushSize", brush_size)
		self.shader:SetUniformVec4("BrushColor", brush_color)

		self.vertex_array:Draw(6)

		self.framebuffer:UnBind()
	end

	function paint:render()
		if (Input.IsMouseKeyDown(Input.MOUSE_BUTTON_LEFT)) then
			self:draw_line(self.current_mouse_pos, self.previous_mouse_pos, self.brush_size, self.brush_color)
			rpc:call("draw_line", self.current_mouse_pos.x, self.current_mouse_pos.y,
				self.previous_mouse_pos.x, self.previous_mouse_pos.y, self.brush_size, self.brush_color.x, self.brush_color.y, self.brush_color.z, self.brush_color.w)
		end

		if (Input.IsKeyDown(Input.KEY_C)) then
			self.clear(self)
			rpc:call("clear")
		end

		self.framebuffer:DrawToScreen()

		ImmGFX.DrawCircleWire(self.current_mouse_pos, self.brush_size)
	end

	function paint:gui()
		ImGui.Begin("Props")
		self.brush_size = ImGui.SliderFloat("Brush Size", self.brush_size, 1.0, 100.0)
		ImGui.SliderRGBA("Brush Color", self.brush_color)
		ImGui.End()
	end

	return paint
end

g_app_main = make_paint()
g_app_main:init()