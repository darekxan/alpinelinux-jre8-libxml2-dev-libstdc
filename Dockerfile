# Extend minimal jeanblanchard/java:jre-8
FROM jeanblanchard/java:jre-8

MAINTAINER Dariusz Skrzypoń <dariusz.skrzypon@infakt.pl>

ENV TESSDATA_PREFIX /usr/share

    # tesseract is in testing repo
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories &&\
    # refreshes apk index
    apk update &&\
    # pdf2html binary
    apk add poppler poppler-utils &&\
    # needed for imagemagick
    apk add ghostscript &&\
    # needed for converting pdfs into images
    apk add imagemagick &&\
    # OCR
    apk add tesseract-ocr &&\
    # cleans package manager cache
    rm -rf /var/cache/apk/*

# copy all language files into tessdata directory
COPY *.traineddata $TESSDATA_PREFIX/tessdata/

