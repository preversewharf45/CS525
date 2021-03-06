
#include <application.h>
#include <imgui.h>
#include <renderer/renderer.h>
#include <network/networkvm.h>
#include <vm/vm.h>

#include "paintrenderer.h"

using namespace app;

#include <iostream>

class TestLayer : public core::Layer {
public:
	TestLayer() : Layer("Network Layer") {

	}
	~TestLayer() {
	}
	void OnUpdate(core::TimePoint) override {
		paint::NetworkVM::Ref().Update();
	}
	void OnImGuiUpdate() override {
		paint::NetworkVM::Ref().Gui();
	}
	void OnEvent(core::events::Event & e) {
		if (e.GetEventType() == core::events::EventType::WindowResize) {
			paint::PaintRenderer::Ref().WindowResized();
		}
	}
private:
	std::string m_Msg;
};

int main() {

	int x = 0x0001;

	paint::NetworkVM::CreateInst();
	Application::CreateInst();
	paint::PaintRenderer::CreateInst();

	paint::NetworkVM::Ref().LuaBindNetworkLib(vm::VM::Ref().GetState());
	paint::PaintRenderer::Ref().BindLuaLib(vm::VM::Ref().GetState());
	
	Application::Ref().PushLayer(new TestLayer());
	
	Application::Ref().Run();
	
	paint::PaintRenderer::DestroyInst();
	Application::Ref().DestroyInst();
	paint::NetworkVM::DestroyInst();
}
