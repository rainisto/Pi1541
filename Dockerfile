FROM centos:7.5.1804

RUN yum -y install wget git bzip2 tar make

RUN cd /opt && wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 && \
    bunzip2 gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 && tar xvf gcc-arm-none-eabi-7-2018-q2-update-linux.tar

COPY . /Pi1541/

RUN cd Pi1541 && PATH=$PATH:/opt/gcc-arm-none-eabi-7-2018-q2-update/bin/ make
