FROM docker:19.03.8
RUN apk add --no-cache \
  ca-certificates \
  bash \ 
  sed \
  nodejs npm
