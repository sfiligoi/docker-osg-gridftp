FROM opensciencegrid/software-base:fresh


RUN yum update -y && \
    rm -rf /var/cache/yum/*

RUN yum install -y osg-gridftp && \
    rm -rf /var/cache/yum/*

ADD 90_osg_config.sh /etc/osg/image-config.d/90_osg_config.sh
ADD supervisor-gftp.conf /etc/supervisord.d/supervisor-gftp.conf

EXPOSE 2811
ENV GLOBUS_TCP_PORT_RANGE=50000,51000
