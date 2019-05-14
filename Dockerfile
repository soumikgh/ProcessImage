FROM ruby:2.5-alpine

RUN apk add --no-cache imagemagick git aws-cli
RUN gem install --no-user-install iiif_s3
ADD script.sh /usr/local/bin/script.sh

ENTRYPOINT ["/usr/local/bin/script.sh"]
