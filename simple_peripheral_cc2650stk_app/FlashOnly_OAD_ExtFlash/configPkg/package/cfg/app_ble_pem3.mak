#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M3{1,0,16.6,0
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/app_ble_pem3.oem3.dep
package/cfg/app_ble_pem3.oem3.dep: ;
endif

package/cfg/app_ble_pem3.oem3: | .interfaces
package/cfg/app_ble_pem3.oem3: package/cfg/app_ble_pem3.c package/cfg/app_ble_pem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c  -mv7M3 --code_state=16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_16.6.0.STS/include" --include_path="F:/Documents/Thesis/sBLE_UART" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/examples/simple_peripheral/cc26xx/app" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/icall/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/roles/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/roles" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/dev_info" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/oad/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/simple_profile/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/simple_profile" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/heapmgr" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/controller/cc26xx/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/target/_common" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/target" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/osal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/services/src/sdata" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/services/src/saddr" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/icall/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/inc" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_18_00_03/products/cc26xxware_2_23_03_17162" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_18_00_03/products/tidrivers_cc13xx_cc26xx_2_16_01_13/packages/ti/mw/extflash" --define=USE_ICALL --define=POWER_SAVING --define=FEATURE_OAD --define=HAL_IMAGE_E --define=SBP_TASK_STACK_SIZE=700 --define=GAPROLE_TASK_STACK_SIZE=520 --define=HEAPMGR_SIZE=0 --define=ICALL_MAX_NUM_TASKS=3 --define=ICALL_MAX_NUM_ENTITIES=6 --define=xdc_runtime_Assert_DISABLE_ALL --define=xdc_runtime_Log_DISABLE_ALL --define=MAX_NUM_BLE_CONNS=1 --define=SENSORTAG_HW --define=CC2650STK --define=CC26XX --define=Display_DISABLE_ALL -g --c99 --gcc --diag_suppress=48 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_ble_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_6_0 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include/rts -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem3 $< -C   -mv7M3 --code_state=16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_16.6.0.STS/include" --include_path="F:/Documents/Thesis/sBLE_UART" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/examples/simple_peripheral/cc26xx/app" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/icall/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/roles/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/roles" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/dev_info" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/oad/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/simple_profile/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/simple_profile" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/heapmgr" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/controller/cc26xx/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/target/_common" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/target" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/osal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/services/src/sdata" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/services/src/saddr" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/icall/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/inc" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_18_00_03/products/cc26xxware_2_23_03_17162" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_18_00_03/products/tidrivers_cc13xx_cc26xx_2_16_01_13/packages/ti/mw/extflash" --define=USE_ICALL --define=POWER_SAVING --define=FEATURE_OAD --define=HAL_IMAGE_E --define=SBP_TASK_STACK_SIZE=700 --define=GAPROLE_TASK_STACK_SIZE=520 --define=HEAPMGR_SIZE=0 --define=ICALL_MAX_NUM_TASKS=3 --define=ICALL_MAX_NUM_ENTITIES=6 --define=xdc_runtime_Assert_DISABLE_ALL --define=xdc_runtime_Log_DISABLE_ALL --define=MAX_NUM_BLE_CONNS=1 --define=SENSORTAG_HW --define=CC2650STK --define=CC26XX --define=Display_DISABLE_ALL -g --c99 --gcc --diag_suppress=48 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_ble_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_6_0 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include/rts -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/app_ble_pem3.oem3: export C_DIR=
package/cfg/app_ble_pem3.oem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)
package/cfg/app_ble_pem3.oem3: Path:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)

package/cfg/app_ble_pem3.sem3: | .interfaces
package/cfg/app_ble_pem3.sem3: package/cfg/app_ble_pem3.c package/cfg/app_ble_pem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 -n $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c -n -s --symdebug:none -mv7M3 --code_state=16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_16.6.0.STS/include" --include_path="F:/Documents/Thesis/sBLE_UART" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/examples/simple_peripheral/cc26xx/app" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/icall/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/roles/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/roles" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/dev_info" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/oad/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/simple_profile/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/simple_profile" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/heapmgr" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/controller/cc26xx/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/target/_common" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/target" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/osal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/services/src/sdata" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/services/src/saddr" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/icall/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/inc" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_18_00_03/products/cc26xxware_2_23_03_17162" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_18_00_03/products/tidrivers_cc13xx_cc26xx_2_16_01_13/packages/ti/mw/extflash" --define=USE_ICALL --define=POWER_SAVING --define=FEATURE_OAD --define=HAL_IMAGE_E --define=SBP_TASK_STACK_SIZE=700 --define=GAPROLE_TASK_STACK_SIZE=520 --define=HEAPMGR_SIZE=0 --define=ICALL_MAX_NUM_TASKS=3 --define=ICALL_MAX_NUM_ENTITIES=6 --define=xdc_runtime_Assert_DISABLE_ALL --define=xdc_runtime_Log_DISABLE_ALL --define=MAX_NUM_BLE_CONNS=1 --define=SENSORTAG_HW --define=CC2650STK --define=CC26XX --define=Display_DISABLE_ALL -g --c99 --gcc --diag_suppress=48 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_ble_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_6_0 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include/rts -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem3 $< -C  -n -s --symdebug:none -mv7M3 --code_state=16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-arm_16.6.0.STS/include" --include_path="F:/Documents/Thesis/sBLE_UART" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/examples/simple_peripheral/cc26xx/app" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/icall/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/roles/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/roles" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/dev_info" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/oad/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/simple_profile/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/profiles/simple_profile" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/heapmgr" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/controller/cc26xx/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/target/_common" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/target" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/hal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/osal/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/services/src/sdata" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/services/src/saddr" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/components/icall/src/inc" --include_path="C:/ti/simplelink/ble_sdk_2_02_00_31/src/inc" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_18_00_03/products/cc26xxware_2_23_03_17162" --include_path="C:/ti/tirtos_cc13xx_cc26xx_2_18_00_03/products/tidrivers_cc13xx_cc26xx_2_16_01_13/packages/ti/mw/extflash" --define=USE_ICALL --define=POWER_SAVING --define=FEATURE_OAD --define=HAL_IMAGE_E --define=SBP_TASK_STACK_SIZE=700 --define=GAPROLE_TASK_STACK_SIZE=520 --define=HEAPMGR_SIZE=0 --define=ICALL_MAX_NUM_TASKS=3 --define=ICALL_MAX_NUM_ENTITIES=6 --define=xdc_runtime_Assert_DISABLE_ALL --define=xdc_runtime_Log_DISABLE_ALL --define=MAX_NUM_BLE_CONNS=1 --define=SENSORTAG_HW --define=CC2650STK --define=CC26XX --define=Display_DISABLE_ALL -g --c99 --gcc --diag_suppress=48 --diag_warning=225 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi  -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_ble_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_16_6_0 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include/rts -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/app_ble_pem3.sem3: export C_DIR=
package/cfg/app_ble_pem3.sem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)
package/cfg/app_ble_pem3.sem3: Path:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)

clean,em3 ::
	-$(RM) package/cfg/app_ble_pem3.oem3
	-$(RM) package/cfg/app_ble_pem3.sem3

app_ble.pem3: package/cfg/app_ble_pem3.oem3 package/cfg/app_ble_pem3.mak

clean::
	-$(RM) package/cfg/app_ble_pem3.mak
