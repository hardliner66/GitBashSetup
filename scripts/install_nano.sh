mkdir -p /share/nano
wget http://www.nano-editor.org/dist/v2.4/NT/nano-2.4.0.zip
unzip nano-2.4.0.zip -d /tmp/nano
NANO_TMP_DIR=$(ls /tmp/nano)
cp /tmp/nano/$NANO_TMP_DIR/* /share/nano
rm -rf /tmp/nano
rm nano-*.zip
