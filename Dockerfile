
# Extend minimal jeanblanchard/java:jre-8
FROM jeanblanchard/java:jre-8

MAINTAINER Dariusz Skrzypoń <dariusz.skrzypon@infakt.pl>

# add libxml2 and libstdc++ dependencies
RUN apk add --update libxml2 libstdc++ &&\
  rm -rf /var/cache/apk/*

