FROM ubuntu:jammy

LABEL maintainer="SpartaEN" \
    description="A cpp docker image for personal use" \
    version="0.0.1"

# non-interactive
ARG DEBIAN_FRONTEND=noninteractive

# UTC timezone
ENV TZ=UTC

# Install necessary tools

RUN apt update -y && apt upgrade -y


RUN apt install -y \
    git \
    curl \
    gcc \
    g++ \
    clang \
    build-essential \
    cmake \
    autoconf \
    unzip \
    tar \
    ca-certificates \
    ninja-build \
    googletest \
    llvm \
    nasm

RUN apt autoclean -y

RUN apt autoremove -y

RUN apt clean -y

RUN rm -rf /var/lib/apt/lists/*