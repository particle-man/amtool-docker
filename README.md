# amtool-docker

Contains the amtool used for Prometheus Alertmanager.

To manually run this:

    docker run -ti --mount type=bind,source=PATH-TO/config.yml,target=/etc/amtool/config.yml metacloud/amtool-docker /bin/sh
