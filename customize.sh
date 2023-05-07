MAXAPI=33
MINAPI=33

SKIPUNZIP=1

if [[ "$(getprop ro.build.PDA)" == "A226BXXU5DWC1" ]]; then
    echo "Right version"
else
    ui_print "Unsupported device or version"
    abort
fi

ui_print "**************************************"
ui_print "             deCorizer                "
ui_print "            by Fede2782               "
ui_print "**************************************"

ui_print "- Extracting module files..."
unzip -o "$ZIPFILE" -x 'META-INF/*' -d $MODPATH
ui_print "- Now clearing package cache to make everything working"

rm -rf /data/system/package_cache/*

rm -rf $MODPATH/.github >> /dev/null


