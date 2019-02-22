#!/bin/sh

export SOURCE_FILE="s3://${SRC_BUCKET}/${SRC_KEY}"
export DEST_FILE="s3://${DEST_BUCKET}/${DEST_KEY}"
aws s3 cp "${SOURCE_FILE}" ./tmp.tif || error_exit "Failed to download source file from ${SOURCE_FILE}"
convert tmp.tif -resize 50% tmp.png
aws s3 cp tmp-0.png "${DEST_FILE}" || error_exit "Failed to upload processed image to ${DEST_FILE}"
