#!/bin/sh

cd /opt
git clone https://github.com/VTUL/iiif_s3_script.git
cd iiif_s3_script
chmod +x main.sh
./main.sh
