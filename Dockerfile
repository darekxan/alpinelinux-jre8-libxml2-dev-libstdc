
# Extend minimal jeanblanchard/java:jre-8
FROM jeanblanchard/java:jre-8
# add libxml2-dev and libstdc++ dependencies
RUN apk add --update libxml2-dev libstdc++ &&\
  rm-rf /var/cache/apk/*

