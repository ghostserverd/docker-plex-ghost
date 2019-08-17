FROM linuxserver/plex

# install intel x264 hardware acceleration driver
RUN \
apt-get update && \
apt-get install -y \
  i965-va-driver

RUN mkdir -p /rdata

# add ghost config file
COPY root/ /
