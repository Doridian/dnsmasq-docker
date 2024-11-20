FROM alpine:3.20.3

RUN apk --no-cache add dnsmasq-dnssec dnssec-root ca-certificates

ENTRYPOINT [ "/usr/sbin/dnsmasq", "--no-daemon" ]
CMD [ "--no-dhcp-interface=eth0", "--no-hosts", "--no-resolv", "--strip-subnet" ]
