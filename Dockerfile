FROM quay.io/ubi8

COPY entrypoint.sh /entrypoint.sh

ENTRYPONT ["/entrypoint.sh"]

