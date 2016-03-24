
# Extend minimal jeanblanchard/java:jre-8
FROM jeanblanchard/java:jre-8

MAINTAINER Dariusz Skrzypoń <dariusz.skrzypon@infakt.pl>

RUN apk add --update libxml2 libstdc++ # needed for pdf2xml
RUN apk add --update ghostscript # needed for imagemagick
RUN apk add --update imagemagick # needed for converting pdfs into images

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories # tesseract is in testing repo
RUN apk add --update tesseract-ocr # OCR

RUN rm -rf /var/cache/apk/* # cleans package manager cache

