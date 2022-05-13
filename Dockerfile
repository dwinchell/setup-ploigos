FROM registry.access.redhat.com/ubi8/ubi-minimal

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

