SIZE_X=2350
SIZE_Y=3450
OFFSET_X=220
OFFSET_Y=20
SKIP_X=50
SKIP_Y=300
{
  scanimage --mode Color --resolution 600 \
  --contrast 0 --brightness 0 --batch-scan=no \
  --device-name 'hpaio:/net/Photosmart_C8100_series?ip=192.168.100.120' \
  > scan.pnm
} &> /dev/null
convert scan.pnm -crop ${SIZE_X}x${SIZE_Y}+${OFFSET_X}+${OFFSET_Y} scan-1.jpg
convert scan.pnm -crop ${SIZE_X}x${SIZE_Y}+$((OFFSET_X+SIZE_X+SKIP_X))+${OFFSET_Y} scan-2.jpg
convert scan.pnm -crop ${SIZE_X}x${SIZE_Y}+${OFFSET_X}+$((OFFSET_Y+SIZE_Y+SKIP_Y)) scan-3.jpg
convert scan.pnm -crop ${SIZE_X}x${SIZE_Y}+$((OFFSET_X+SIZE_X+SKIP_X))+$((OFFSET_Y+SIZE_Y+SKIP_Y)) scan-4.jpg
rm scan.pnm
