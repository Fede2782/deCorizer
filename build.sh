#/bin/bash
rm *.zip
version="$(grep '^version=' module.prop  | cut -d= -f2)"
zip -r9 "deCorizer-$version.zip" . -x build.sh update.json
zip --delete "deCorizer-$version.zip" ".git/*" || true


