FROM ubuntu
RUN apt-get update && apt-get install -y python-dev python python-pip vim git wget
ADD . /kolla/
RUN pip install -r /kolla/requirements.txt \
        && pip install /kolla/
RUN mkdir /etc/kolla
COPY stackanetes-dockerfile/etc/kolla/* /etc/kolla/
COPY stackanetes-dockerfile/Base-Dockerfile.j2 /usr/local/share/kolla/docker/base/Dockerfile.j2
COPY stackanetes-dockerfile/kubernetes-entrypoint/kubernetes-entrypoint /usr/local/share/kolla/docker/base/kubernetes-entrypoin
COPY stackanetes-dockerfile/footer /tmp/footer
