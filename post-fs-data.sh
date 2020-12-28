#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
SYSETC=$MODDIR/system/etc
SYSXML=$SYSETC/fonts.xml
# This script will be executed in post-fs-data mode

#Copy original fonts.xml to the MODDIR to overwrite dummy file
cp /system/etc/fonts.xml $SYSETC

#Change fonts.xml file
miui_12() {
	# sed s/置換条件/置換文字/    置換条件を置換文字に変換する。最後にgを付けた場合は置換条件に当てはまるすべての文字列が置換される。gではなくn番目として数字でも指定できる。
	# sans-serif
	sed -i 's@<font weight="100" style="normal">Roboto-Thin.ttf</font>@<font weight="100" style="normal">Mali-ExtraLight.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="100" style="italic">Roboto-ThinItalic.ttf</font>@<font weight="100" style="normal">Mali-ExtraLightItalic.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="300" style="normal">Roboto-Light.ttf</font>@<font weight="300" style="normal"Mali-Light.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="300" style="italic">Roboto-LightItalic.ttf</font>@<font weight="300" style="normal">Mali-LightItalic.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="400" style="normal">Roboto-Regular.ttf</font>@<font weight="400" style="normal">Mali-Regular.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="400" style="italic">Roboto-Italic.ttf</font>@<font weight="400" style="normal">Mali-Italic.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="500" style="normal">Roboto-Medium.ttf</font>@<font weight="500" style="normal">Mali-Medium.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="500" style="italic">Roboto-MediumItalic.ttf</font>@<font weight="500" style="normal">Mali-MediumItalic.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="900" style="normal">Roboto-Black.ttf</font>@<font weight="900" style="normal">Mali-SemiBold.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="900" style="italic">Roboto-BlackItalic.ttf</font>@<font weight="900" style="normal">Mali-SemiBoldItalic.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="700" style="normal">Roboto-Bold.ttf</font>@<font weight="700" style="normal">Mali-Bold.ttf</font>@g' $SYSXML
	sed -i 's@<font weight="700" style="italic">Roboto-BoldItalic.ttf</font>@<font weight="700" style="normal">Mali-BoldItalic.ttf</font>@g' $SYSXML

	# sans-serif-condensed"
	sed -i 's@<font weight="300" style="normal">RobotoCondensed-Light.ttf</font>@<font weight="300" style="normal">Mali-Light.ttf</font>@g' $SYSXML
    sed -i 's@<font weight="300" style="italic">RobotoCondensed-LightItalic.ttf</font>@<font weight="300" style="italic">Mali-LightItalic.ttf</font>@g' $SYSXML
    sed -i 's@<font weight="400" style="normal">RobotoCondensed-Regular.ttf</font>@<font weight="400" style="normal">Mali-Regular.ttf</font>@g' $SYSXML
    sed -i 's@<font weight="400" style="italic">RobotoCondensed-Italic.ttf</font>@<font weight="400" style="italic">Mali-Italic.ttf</font>@g' $SYSXML
    sed -i 's@<font weight="500" style="normal">RobotoCondensed-Medium.ttf</font>@<font weight="500" style="normal">Mali-Medium.ttf</font>@g' $SYSXML
    sed -i 's@<font weight="500" style="italic">RobotoCondensed-MediumItalic.ttf</font>@<font weight="500" style="italic">Mali-MediumItalic.ttf</font>@g' $SYSXML
    sed -i 's@<font weight="700" style="normal">RobotoCondensed-Bold.ttf</font>@<font weight="700" style="normal">Mali-Bold.ttf</font>@g' $SYSXML
    sed -i 's@<font weight="700" style="italic">RobotoCondensed-BoldItalic.ttf</font>@<font weight="700" style="italic">Mali-BoldItalic.ttf</font>@g' $SYSXML

	# zh-Hans
	sed -i '/lang="zh-Hans">/,/family>/s@NotoSansCJK-Regular.ttc@Mengshen-Handwritten.ttf@g' $SYSXML
	# zh-Hant,zh-Bopo
	sed -i '/lang="zh-Hant,zh-Bopo">/,/family>/s@NotoSansCJK-Regular.ttc@Mengshen-Handwritten.ttf@g' $SYSXML
	# ja
	sed -i '/lang="ja">/,/family>/s@NotoSansCJK-Regular.ttc@Mengshen-Handwritten.ttf@g' $SYSXML
	# ko
	sed -i '/lang="ko">/,/family>/s@NotoSansCJK-Regular.ttc@Kosefont-JP.ttf@g' $SYSXML
}


miui_12