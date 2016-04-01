# Extend minimal jeanblanchard/java:jre-8
FROM darekxan/alpinelinux-jre8-libxml2-dev-libstdc:latest

    # py-scipy is in testing repo
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories &&\
    # refreshes apk index
    apk update &&\
    #
    apk add --upgrade g++ &&\
    # installs scipy and as dependencies: python and numpy
    apk add py-scipy &&\
    # python dependency manager
    apk add py-pip &&\
    # update pip
    pip install --upgrade pip &&\
    # scikit-learn
    pip install -U scikit-learn
