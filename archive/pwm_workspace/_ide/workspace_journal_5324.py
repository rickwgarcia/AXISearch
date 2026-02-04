# 2026-01-29T14:21:54.715674
import vitis

client = vitis.create_client()
client.set_workspace(path="pwm_workspace")

platform = client.get_component(name="pwm_platform")
status = platform.build()

comp = client.get_component(name="app_component")
status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = comp.clean()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../pwm_ip_demo/design_1_wrapper.xsa")

status = platform.build()

component = client.get_component(name="app_component")

lscript = component.get_ld_script(path="/home/rickg/Desktop/AXISearch/pwm_workspace/app_component/src/lscript.ld")

lscript.regenerate()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

vitis.dispose()

