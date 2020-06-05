{
  scanimage --mode Color --resolution 600 \
  --contrast 0 --brightness 0 --batch-scan=no \
  --device-name 'hpaio:/net/Photosmart_C8100_series?ip=192.168.100.120' \
  > scan.pnm
} &> /dev/null
convert scan.pnm -crop 2000x3000 scan.jpg
rm scan.pnm
