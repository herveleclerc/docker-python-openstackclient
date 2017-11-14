FROM ubuntu:16.04

RUN set -xe \
    \
    && apt-get update \
    && apt-get -y install software-properties-common \
    && add-apt-repository cloud-archive:mitaka -y \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y python-openstackclient python3-openstackclient

CMD [ "openstack" ]
