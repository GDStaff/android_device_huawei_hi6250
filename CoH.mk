ifeq ($(I_AM_CODEOFHONOR), true)
# Use my custom build ninja that prints to screen sequentially
# so you can see whats going on.
# Resolve depenancy issue: sudo apt-get install libc++-dev
$(shell echo "Using CodeOfHonor's Ninja" >&2)
$(shell cp -f $(LOCAL_PATH)/prebuilt/ninja prebuilts/ninja/linux-x86/ninja)

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/recovery/init.recovery.meticulus.rc:root/init.recovery.meticulus.rc \
	$(LOCAL_PATH)/recovery/data-formatter.sh:install/bin/data-formatter.sh \
	$(LOCAL_PATH)/recovery/finalize.sh:install/bin/finalize.sh \
	$(LOCAL_PATH)/recovery/stock-check.sh:install/bin/stock-check.sh \

PRODUCT_PACKAGES += \
    	CodinalteParts \
    	volumeinput

# ReleaseTools
TARGET_RELEASETOOLS_EXTENSIONS := device/huawei/hi6250

else
$(shell cd $(LOCAL_PATH)/prebuilt/ninja && git checkout linux-x86/bin/ninja)
endif
