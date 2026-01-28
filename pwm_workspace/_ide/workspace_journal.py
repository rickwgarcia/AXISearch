# 2026-01-28T15:23:06.416784
import vitis

client = vitis.create_client()
client.set_workspace(path="pwm_workspace")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "pwm_platform",hw_design = "$COMPONENT_LOCATION/../../pwm_ip_demo/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="pwm_platform")
status = platform.build()

comp = client.create_app_component(name="app_component",platform = "$COMPONENT_LOCATION/../pwm_platform/export/pwm_platform/pwm_platform.xpfm",domain = "standalone_microblaze_0")

