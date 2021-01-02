#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
# This script will be executed in post-fs-data mode

#Copy original fonts.xml to the MODDIR to overwrite dummy file
cp /system/etc/fonts.xml $MODDIR/system/etc

#Change fonts.xml file
# これだと置き換わらない
# sed -i '@lang="zh-Hans">@,@family>@s@NotoSansCJK-Regular.ttc@Mengshen-Handwritten.ttf@g' $MODDIR/system/etc/fonts.xml

#jp
sed -i 's@<font weight="400" style="normal" index="0">NotoSansCJK-Regular.ttc</font>@<font weight="400" style="normal" index="0">Mengshen-Handwritten.ttf</font>@g' $MODDIR/system/etc/fonts.xml
sed -i 's@<font weight="400" style="normal" index="0" fallbackFor="serif">NotoSerifCJK-Regular.ttc</font>@<font weight="400" style="normal" index="0" fallbackFor="serif">Mengshen-Handwritten.ttf</font>@g' $MODDIR/system/etc/fonts.xml


#Goodbye, SomcUDGothic
sed -i 's@SomcUDGothic-Light.ttf@null.ttf@g' $MODDIR/system/etc/fonts.xml
sed -i 's@SomcUDGothic-Regular.ttf@null.ttf@g' $MODDIR/system/etc/fonts.xml

#Goodbye, OnePlus Font
sed -i 's@OpFont-@Roboto-@g' $MODDIR/system/etc/fonts.xml

#Copy fonts_slate.xml for OnePlus
opslate=fonts_slate.xml
if [ -e /system/etc/$opslate ]; then
    cp /system/etc/$opslate $MODDIR/system/etc
	
	#Change fonts_slate.xml file
	sed -i 's@NotoSansCJK-Regular.ttc@Mengshen-Handwritten@g' $MODDIR/system/etc/$opslate
	sed -i 's@SlateForOnePlus-Thin.ttf@Mengshen-Handwritten@g' $MODDIR/system/etc/$opslate
fi

#Copy fonts_base.xml for OnePlus OxygenOS 11+
oos11=fonts_base.xml
if [ -e /system/etc/$oos11 ]; then
    cp /system/etc/$oos11 $MODDIR/system/etc
	
	#Change fonts_slate.xml file
	sed -i 's@NotoSansCJK-Regular.ttc@Mengshen-Handwritten@g' $MODDIR/system/etc/$oos11
	sed -i 's@NotoSerifCJK-Regular.ttc@Mengshen-Handwritten@g' $MODDIR/system/etc/$oos11
fi