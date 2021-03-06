#!/bin/bash

# basurl="ftp://ftp.nrcan.gc.ca/pub/outgoing/NAM_grids/zipfiles300/"
# end="_300arcsec.zip"
basurl="ftp://ftp.nrcan.gc.ca/pub/outgoing/NAM_grids/zipfiles60/"
end="_60arcsec.zip"
# info="bio"
# info="cmi"
# info="pcp"
# info="mint"
# info="maxt"
# info="sg"

# for info in "bio" "cmi" "pcp" "mint" "maxt" "sg"
for info in "bio" "sg"
# for info in "bio"
do
  for y in `seq 2010 2018`
  do
    # echo $basurl$info$y$end
    wget $basurl$info$y$end -O "/tmp/"$info$y$end
    unzip "/tmp/"$info$y$end
    mv $y "data60/"$info$y
  done
done
