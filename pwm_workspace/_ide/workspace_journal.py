# 2026-01-30T11:31:27.838760
import vitis

client = vitis.create_client()
client.set_workspace(path="pwm_workspace")

platform = client.get_component(name="pwm_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../pwm_ip_demo/design_1_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="app_component")
status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

