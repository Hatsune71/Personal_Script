echo "Initializing Env Setup..."
. build/envsetup.sh

echo "Lunch nad ysl..."
lunch nad_ysl-userdebug

echo "Making the Rom..."
make nad -j$(nproc --all)
