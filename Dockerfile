FROM ubuntu:17.10

MAINTAINER Rodrigo Copetti <rodrigo.copetti@outlook.com>

ENV TOOLCHAIN_VERSION 71e9c0222ca4f0d3041a45b6821c05f390b27fa3

ENV PS3DEV /usr/local/ps3dev
ENV PSL1GHT ${PS3DEV}
ENV PATH ${PATH}:${PS3DEV}/bin:${PS3DEV}/ppu/bin:${PS3DEV}/spu/bin

COPY install-libraries.sh /

RUN \
  apt-get -y update && \
  apt-get -y install autoconf bison build-essential flex git libelf-dev libgmp3-dev libncurses5-dev libssl-dev libtool-bin pkg-config python-dev texinfo wget zlib1g-dev && \
  apt-get -y clean autoclean autoremove && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN \
    git clone https://github.com/ps3dev/ps3toolchain.git && \
    cd ps3toolchain && \
    ./toolchain.sh && \
    cd .. && \
    rm -Rf ps3toolchain

RUN \
    sh install-libraries.sh && \
    rm install-libraries.sh

WORKDIR /src
CMD ["/bin/bash"]
