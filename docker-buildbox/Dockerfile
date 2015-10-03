FROM ubuntu:14.04.3
MAINTAINER Tom Wieczorek <tom@bibbu.net>


# Update repositories
RUN apt-get -y update

# Don't prompt during apt-get
ENV DEBIAN_FRONTEND="noninteractive"

# Install git
RUN apt-get -y install git-core

# Install software required to compile C++ code
RUN apt-get -y install build-essential cmake

# Install essential Qt libraries (libqt5x11extras5-dev is optional but nice to have)
RUN apt-get -y install qtbase5-dev libqt4-dev libqt5x11extras5-dev qttools5-dev qttools5-dev-tools

# Install other required libraries for cryptography and compression. (libxtst-dev is optional; Required for testing)
RUN apt-get -y install zlib1g-dev libgcrypt20-dev libxtst-dev

# Install packages required to build deb packages
RUN apt-get install -y debhelper dh-make quilt fakeroot lintian

# Initial clone of keepassx repo
RUN git clone https://github.com/keepassx/keepassx.git /keepassx

COPY files/build-keepassx.sh /

ENTRYPOINT ["/build-keepassx.sh"]

