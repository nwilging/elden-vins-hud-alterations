set -x

FFDEC_PATH=$(pwd)/ffdec/ffdec
SOURCE_PATH=$(pwd)/src

for file in $SOURCE_PATH/*.xml;
do
  bash $FFDEC_PATH -xml2swf "$file" "${file%.xml}.gfx"
done