FROM mikesir87/aws-cli

RUN apk add --no-cache imagemagick
ADD script.sh /usr/local/bin/script.sh

ENTRYPOINT ["/usr/local/bin/script.sh"]
