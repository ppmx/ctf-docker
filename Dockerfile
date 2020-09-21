FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt -y upgrade && apt install -y git vim curl gcc clang gdb strace tcpdump python3 ipython3 python3-pip
RUN git clone https://github.com/pwndbg/pwndbg && cd pwndbg && ./setup.sh && \
    pip3 install requests pwntools

