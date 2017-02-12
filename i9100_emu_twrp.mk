#
# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Include common makefile
$(call inherit-product, device/samsung/i9100_emu/i9100_emu.mk)

LOCAL_PATH := device/samsung/i9100_emu_twrp

# TWRP Recovery rootdir
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/twrp.fstab:recovery/root/etc/twrp.fstab

# TWRP
TW_THEME := portrait_mdpi
TW_USE_BUSYBOX_SH := true
TWRP_NEW_THEME := true
HAVE_SELINUX := true
TW_MAX_BRIGHTNESS := 255
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_PARTED := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/platform/s5p-tmu/temperature"
RECOVERY_SDCARD_ON_DATA := true
