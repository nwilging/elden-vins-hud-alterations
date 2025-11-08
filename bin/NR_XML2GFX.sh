set -x

FFDEC_PATH=$(pwd)/ffdec/ffdec
SOURCE_PATH=$(pwd)/src

for file in $SOURCE_PATH/*.xml;
do
  java -jar $FFDEC_PATH.jar -xml2swf "$file" "${file%.xml}.gfx"
done