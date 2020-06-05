{
  scanimage --mode Color --resolution 600 --contrast 0 --brightness 0 \
          --batch-scan=no > scan.pnm
} &> /dev/null
convert scan.pnm -crop 2000x3000 scan.jpg
rm scan.pnm

#convert -size 32x32 \( xc:blue xc:red -append \) \
#                    \( xc:green xc:yellow -append \) +append res.gif
#convert res.gif -crop 32x32 crop.png
#convert res.gif -crop 32x32+0+0   1.gif
#convert res.gif -crop 32x32+32+0  2.gif
#convert res.gif -crop 32x32+0+32  3.gif
#convert res.gif -crop 32x32+32+32 4.gif
