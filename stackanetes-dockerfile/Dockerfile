FROM ubuntu
RUN apt-get update && apt-get install -y python-dev python python-pip vim git wget
RUN pip install -r https://raw.githubusercontent.com/openstack/kolla/master/requirements.txt \
        && pip install git+https://github.com/openstack/kolla.git
RUN mkdir /etc/kolla
COPY etc/kolla/* /etc/kolla/
COPY Base-Dockerfile.j2 /usr/local/share/kolla/docker/base/Dockerfile.j2
COPY kubernetes-entrypoint/kubernetes-entrypoint /usr/local/share/kolla/docker/base/kubernetes-entrypoint
