FROM linuxserver/plex

# this is probably not going to mitigate Log4Shell in many
# cases but it won't hurt
# https://logging.apache.org/log4j/2.x/security.html
ENV LOG4J_FORMAT_MSG_NO_LOOKUPS=true

# install intel x264 hardware acceleration driver
RUN \
apt-get update && \
apt-get install -y \
  i965-va-driver

RUN mkdir -p /rdata

# add ghost config file
COPY root/ /
