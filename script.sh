#!/bin/sh

aws configure --region us-east-2
export SOURCE_FILE="s3://vtlib-imgstore/Ms1996_008_CarpenterHenry_Complete/Ms1996_008_1863_0904a.tif"
export DEST_FILE="s3://vtlib-imgdeposit/Ms1996_008_1863_0904a.png"
aws s3 cp "${SOURCE_FILE}" ./tmp.tif || error_exit "Failed to download source file from ${SOURCE_FILE}"
convert tmp.tif -resize 50% tmp.png
aws s3 cp tmp-0.png "${DEST_FILE}"
