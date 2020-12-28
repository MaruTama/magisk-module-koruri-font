REMOVE_FONTS="
Kosefont-JP.ttf
Mali-Bold.ttf
Mali-BoldItalic.ttf
Mali-ExtraLight.ttf
Mali-ExtraLightItalic.ttf
Mali-Italic.ttf
Mali-Light.ttf
Mali-LightItalic.ttf
Mali-Medium.ttf
Mali-MediumItalic.ttf
Mali-Regular.ttf
Mali-SemiBold.ttf
Mali-SemiBoldItalic.ttf
Mengshen-Handwritten.ttf
"
MODDIR=${0%/*}
SYSFNT=$MODDIR/system/fonts

# REMOVE_FONTS が存在していたら削除する
# if [ -n "$REMOVE_FONTS" ]; then
#     for font_name in $REMOVE_FONTS; do
#         echo $SYSFNT/$font_name
#         rm -f $SYSFNT/$font_name
#     done
# fi

# miui_12() {
# 	# sans-serif
# 	sed -i 's@<font weight="100" style="normal">Roboto-Thin.ttf</font>@<font weight="300" style="normal">Koruri-Light.ttf</font>@g' $SYSXML
# 	sed -i 's@<font weight="100" style="normal">Roboto-Thin.ttf</font>@<font weight="300" style="normal">Koruri-Light.ttf</font>@g' $SYSXML


# 	# zh-Hans
# 	# zh-Hant,zh-Bopo
# 	# ja
# 	# ko
# }


# miui_12

