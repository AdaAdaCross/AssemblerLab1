FROM ubuntu
COPY test.s .
RUN apt-get update
RUN apt-get -y install gcc gcc-multilib
RUN gcc -o test test.s -g -m32
CMD ./test
