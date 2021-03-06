FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt -y upgrade \
    && apt -y install --no-install-recommends \
    language-pack-ja \
    && update-locale LANG=ja_JP.UTF-8 \
    && apt -y install --no-install-recommends \
    build-essential \
    manpages-dev \
    software-properties-common \
    && add-apt-repository ppa:ubuntu-toolchain-r/test \
    && apt -y install --no-install-recommends \
    gcc-9 \
    g++-9 \
    gdb \
    && update-alternatives --install \
    /usr/bin/gcc gcc /usr/bin/gcc-9 90 \
    --slave /usr/bin/g++ g++ /usr/bin/g++-9 \
    --slave /usr/bin/gcov gcov /usr/bin/gcov-9 \
    && apt -y install --no-install-recommends libboost-all-dev \
    && apt -y install --no-install-recommends git \
    && apt autoremove -y \
    && apt clean -y

ENV DEBIAN_FRONTEND=dialog