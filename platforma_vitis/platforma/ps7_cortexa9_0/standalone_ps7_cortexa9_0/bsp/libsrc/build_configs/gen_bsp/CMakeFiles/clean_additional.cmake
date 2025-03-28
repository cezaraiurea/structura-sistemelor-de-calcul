# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Users\\Admin\\Desktop\\ANUL3_SEM1\\SSC_Proiect\\platforma_vitis\\platforma\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\sleep.h"
  "C:\\Users\\Admin\\Desktop\\ANUL3_SEM1\\SSC_Proiect\\platforma_vitis\\platforma\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xiltimer.h"
  "C:\\Users\\Admin\\Desktop\\ANUL3_SEM1\\SSC_Proiect\\platforma_vitis\\platforma\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xtimer_config.h"
  "C:\\Users\\Admin\\Desktop\\ANUL3_SEM1\\SSC_Proiect\\platforma_vitis\\platforma\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
