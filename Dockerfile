FROM alpine:3.21.0

RUN apk --no-cache add dnsmasq-dnssec dnssec-root ca-certificates

ENTRYPOINT [ "/usr/sbin/dnsmasq", "--no-daemon" ]
CMD [ "--no-dhcp-interface=eth0", "--no-hosts", "--no-resolv", "--strip-subnet" ]
