FROM registry.access.redhat.com/ubi8/python-38

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

