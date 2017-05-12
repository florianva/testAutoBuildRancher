FROM ubuntu:xenial

MAINTAINER Florian Vansteene <florian.vansteene@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

# Apt packagest
RUN apt-get update && \
    apt-get install -y g++ git make
WORKDIR /temp
# GIT
RUN git clone https://github.com/florianva/testCDocker.git
#    cd
WORKDIR /temp2
RUN git clone https://github.com/florianva/testCDocker.git
#    cd
WORKDIR /temp2
ENTRYPOINT ["bash"]
#RUN echo "export PATH=/usr/bin/"
#RUN make --version
CMD ["./test.c"]


