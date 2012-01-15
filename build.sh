echo " "
echo " CLEANING..."
echo " "

make clean

cd drivers/misc/samsung_modemctl
make
cd ../../..

echo "================================================================================================================="
echo "  BUILDING MODULES AND COPYING THEM TO RAMDISK"
echo "================================================================================================================="

make -j8 modules

echo " "
echo " "
find . -iname *.ko | xargs cp -frvt /home/angel_666/kernel/initramfs_root/lib/modules
echo " "
echo " "
echo " "

echo "================================================================================================================="
echo "  BUILDING KERNEL"
echo "================================================================================================================="

make -j8

cd arch/arm/boot
ls -la

echo " "
echo "   THE END    " 
echo " "
