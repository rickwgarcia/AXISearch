# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/rickg/Desktop/AXISearch/pwm_workspace/pwm_platform/microblaze_0/standalone_microblaze_0/bsp/include/sleep.h"
  "/home/rickg/Desktop/AXISearch/pwm_workspace/pwm_platform/microblaze_0/standalone_microblaze_0/bsp/include/xiltimer.h"
  "/home/rickg/Desktop/AXISearch/pwm_workspace/pwm_platform/microblaze_0/standalone_microblaze_0/bsp/include/xtimer_config.h"
  "/home/rickg/Desktop/AXISearch/pwm_workspace/pwm_platform/microblaze_0/standalone_microblaze_0/bsp/lib/libxiltimer.a"
  )
endif()
