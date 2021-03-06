FROM rhel7

MAINTAINER Justin Davis <jusdavis@redhat.com>

USER root

RUN yum-config-manager --disable rhel-7-server-htb-rpms \
 && yum -y update \
 && rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
 && yum-config-manager --enable rhel-7-server-rpms \
 && yum-config-manager --enable rhel-7-server-extras-rpms \
 && yum-config-manager --enable rhel-7-server-optional-rpms \
 && yum-config-manager --enable rhel-7-server-ansible-2.5-rpms \
 && yum-config-manager --enable rhel-7-server-rh-common-rpms \
 && yum-config-manager --enable rhel-7-server-ose-3.9-rpms \
 && yum-config-manager --enable rhel-7-fast-datapath-rpms \
 && yum -y update \
 && INSTALL_PKGS="bash atomic-openshift-utils ansible python2-pip git wget gcc python-devel nmap-ncat bind-utils wget git net-tools iptables-services bridge-utils bash-completion kexec-tools sos psacct libffi-devel openssl-devel" \
 && yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS \
 && yum clean all

RUN pip install --upgrade pip \
 && pip install cryptography==2.1.4 \
 && pip install ansible[azure]

LABEL name="openshift/ocp-azure" \
      summary="OpenShift's installation and configuration tool" \
      description="A containerized openshift-ansible image to let you run playbooks to install, upgrade, maintain and check an OpenShift cluster"

RUN mkdir /root/.azure
COPY .azure/credentials /root/.azure

RUN mkdir /root/.ssh
COPY ssh/id_rsa /root/.ssh
COPY ssh/id_rsa.pub /root/.ssh

RUN mkdir /root/bin
COPY bin /root/bin

COPY root /

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]
