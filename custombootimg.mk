MKBOOTIMG_BIN := out/host/linux-x86/bin/mkbootimg

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo ----- Making recovery image ------
	/builds/omni-4.4/out/host/linux-x86/bin/mkbootimg  --kernel /builds/omni-4.4/device/samsung/trlte/kernAl  --ramdisk /builds/omni-4.4/out/target/product/trlte/ramdisk-recovery.img --cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 dwc3_msm.cpu_to_affin=1" --base 0x00008000 --pagesize 4096 --ramdisk_offset 0x02600000 --dt device/samsung/trlte/dtb --tags_offset 0x02400000 --output /builds/omni-4.4/out/target/product/trlte/recovery.img
	@echo ----- Made recovery image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)


$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) --output $@
	#$(hide) $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
