FROM alpine:3.7

# add packages
RUN apk --no-cache add bash tor

# expose default tor port
EXPOSE 9001

# copy in configuration files
COPY torrc.bridge /etc/tor/torrc.bridge
COPY torrc.middle /etc/tor/torrc.middle
COPY torrc.exit /etc/tor/torrc.exit

# default environment variables
ENV RELAY_NICKNAME tor
ENV RELAY_TYPE middle
ENV RELAY_BANDWIDTH_RATE 100 KBytes
ENV RELAY_BANDWIDTH_BURST 200 KBytes

# copy in run.sh
COPY run.sh /run.sh
RUN chmod +x /run.sh

# set up persistent storage
RUN mkdir /var/lib/tor/.tor
VOLUME /var/lib/tor/.tor

# set entrypoint
ENTRYPOINT [ "/run.sh" ]
