# Extend minimal jeanblanchard/java:jre-8
FROM darekxan/alpinelinux-jre8-libxml2-dev-libstdc:latest

    # py-scipy is in testing repo
    RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories &&\
    # refresh apk index
    apk update &&\
    # install scipy and as dependencies: python and numpy
    apk add py-scipy &&\
    # scikit-learn compilation depenndencies: g++, openblas-dev, py-numpy-dev
    apk add g++ &&\
    apk add openblas-dev &&\
    apk add py-numpy-dev &&\
    # add python dependency manager
    apk add py-pip &&\
    # update pip
    pip install --upgrade pip &&\
    # install scikit-learn from sources scikit-learn
    pip install --upgrade scikit-learn &&\
    # all done - cleanup phase
    # remove scikit-learn compilation requirements
    apk del openblas-dev &&\
    apk del py-numpy-dev &&\
    apk del g++ &&\
    # clean package manager cache
    rm -rf /var/cache/apk/* &&\
    # clean pip cache
    rm -rf ~/.cache/pip/*