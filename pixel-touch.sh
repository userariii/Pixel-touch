#!/bin/bash
echo "Started deleting the repos"
rm -rf frameworks/base
rm -rf frameworks/av
rm -rf device/custom/sepolicy
rm -rf system/sepolicy
rm -rf packages/apps/Settings
rm -rf packages/apps/Updates
rm -rf vendor/aosp
echo "Repo deletion completed"
echo "---___--- "
echo "Downloading forked repos"
git clone -b thirteen https://github.com/userariii/frameworks_base.git frameworks/base --depth=1
git clone -b thirteen https://github.com/userariii/frameworks_av.git frameworks/av --depth=1
git clone -b thirteen https://github.com/userariii/device_custom_sepolicy.git device/custom/sepolicy --depth=1
git clone -b thirteen https://github.com/userariii/system_sepolicy.git system/sepolicy --depth=1
git clone -b thirteen https://github.com/userariii/packages_apps_Settings.git packages/apps/Settings --depth=1
git clone -b thirteen https://github.com/userariii/packages_apps_Updates.git packages/apps/Updates --depth=1
git clone -b thirteen https://github.com/userariii/vendor_aosp.git vendor/aosp --depth=1
echo "Repo successfully downloaded"
