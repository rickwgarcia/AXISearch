# 2026-01-30T11:03:26.291685
import vitis

client = vitis.create_client()
client.set_workspace(path="pwm_workspace")

platform = client.get_component(name="pwm_platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../pwm_ip_demo/design_1_wrapper.xsa")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

