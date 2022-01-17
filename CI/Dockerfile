FROM ubuntu:20.04

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get -y install git cmake g++ clang

# COPY ../../Tests/ /prod/jenkins-test/

# ADD ../CI /prod/jenkins-test/

RUN rm -rf project; mkdir project; cd project && \
    git clone https://github.com/ptrIslam123/jenkins-test.git && \
    cd jenkins-test; rm -rf build; mkdir build; cd build && \
    cmake ..