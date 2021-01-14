mkdir nusa
cd nusa

echo "Initializing Nusantara Project Repo..."
repo init -u ssh://git@github.com/Nusantara-ROM/android.git -b 11 --depth=1

echo "Syncing Nusantara Project Repo..."
repo sync -c -q --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)

echo "Cloning Device Tree..."
git clone git@github.com:NusantaraROM-Devices/device_xiaomi_ysl.git device/xiaomi/ysl --depth=1

echo "Cloning Vendor Tree..."
git clone git@github.com:NusantaraROM-Devices/vendor_xiaomi_ysl.git vendor/xiaomi --depth=1

echo "Cloning StromBreaker Kernel ysl..."
git clone git@github.com:stormbreaker-project/kernel_xiaomi_ysl.git kernel/xiaomi/msm8953 --depth=1

echo "Cloning Depedencies Nusa..."
git clone git@github.com:Nusantara-ROM/android_packages_apps_NusantaraParts.git -b 11-4.9-ysl packages/apps/NusantaraParts

rm -rf vendor/qcom/opensource/dataservices
