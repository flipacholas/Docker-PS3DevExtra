FROM alpine:3.7

MAINTAINER Rodrigo Copetti <rodrigo.copetti@outlook.com>

ENV TOOLCHAIN_VERSION 71e9c0222ca4f0d3041a45b6821c05f390b27fa3

ENV PS3DEV  /usr/local/ps3dev
ENV PSL1GHT $PS3DEV
ENV PATH    $PATH:$PS3DEV/bin:$PS3DEV/ppu/bin:$PS3DEV/spu/bin

COPY install-libraries.sh /tmp

RUN apk update && apk upgrade && apk add --no-cache alpine-sdk \
        coreutils \
        autoconf \
        automake \
        bison \
        bzip2 \
        flex \
        g++ \
        gcc \
        git \
        libelf-dev \
        libtool \
        make \
        patch \
        python-dev \
        texinfo \
        vim \
        wget \
        gmp-dev \
        ncurses-dev \
        zlib-dev \
        xz \
        mpfr-dev \
        mpc \
        mpc1-dev \
        openssl-dev \
        linux-headers \
    && cd tmp \
    && git clone git://github.com/ps3dev/ps3toolchain.git ps3toolchain \
    && cd ps3toolchain \
    && git checkout -qf $TOOLCHAIN_VERSION \
    && sh toolchain.sh \
    && cd .. \
    && sh install-libraries.sh \
    && rm -Rf ps3toolchain \
    && rm install-libraries.sh

WORKDIR /src
CMD ["/bin/ash"]
