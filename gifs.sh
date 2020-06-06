# Color wheel
convert -size 32x32 \( xc:blue xc:red -append \) \ 
                    \( xc:green xc:yellow -append \) \
                    +append \
                    \( +clone -rotate 90 \) \
                    \( +clone -rotate 90 \) \
                    \( +clone -rotate 90 \) \
                    res.gif
