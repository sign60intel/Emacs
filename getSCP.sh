#!/usr/bin/env bash

cd $(mktemp -d /tmp/script.XXXXXXX)
TEMP_DIR=$(pwd)

mkdir -p ~/.fonts

wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
unzip 1.050R-it.zip
cp source-code-pro-2.030R-ro-1.050R-it/OTF/*.otf ~/.fonts/

wget https://github.com/adobe-fonts/source-serif-pro/archive/2.000R.zip
unzip 2.000R.zip
cp source-serif-pro-2.000R/OTF/*.otf ~/.fonts/

wget https://github.com/adobe-fonts/source-sans-pro/archive/2.020R-ro/1.075R-it.zip
unzip 1.075R-it.zip
cp source-sans-pro-2.020R-ro-1.075R-it/OTF/*.otf ~/.fonts/

fc-cache -f -v

cd ~
rm -rf $TEMP_DIR
exit 0
