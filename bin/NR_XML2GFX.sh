set -x

FFDEC_PATH=$(pwd)/ffdec/ffdec
SOURCE_PATH=$(pwd)/src

chmod +x $FFDEC_PATH
for file in $SOURCE_PATH/*.xml;
do
  $FFDEC_PATH -xml2swf "$file" "${file%.xml}.gfx"
done