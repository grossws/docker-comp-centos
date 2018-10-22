FROM centos:7

LABEL org.label-schema.name="CentOS 7 with tianon/gosu and helpers" \
  org.label-schema.vcs-url="https://github.com/grossws/docker-comp-centos" \
  maintainer="Konstantin Gribov <grossws@gmail.com>"

ARG GOSU_VERSION=1.10
ARG GOSU_URL=https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64

COPY bash_helpers /root/.bash_helpers
RUN set -o errexit; set -o pipefail; source /root/.bash_helpers; \
  gpg --list-keys &> /dev/null; \
  echo 'keyid-format long' >> /root/.gnupg/gpg.conf; \
  gpg_rk B42F6819007F00F88E364FD4036A9C25BF357DD4; \
  dl_and_verify ${GOSU_URL} /bin/gosu; \
  chmod +x /bin/gosu

RUN set -o errexit; set -o pipefail; source /root/.bash_helpers; \
  yum -y update; \
  yumi tar; \
  localedef -i en_US -f UTF-8 en_US.UTF-8; \
  localedef -i ru_RU -f UTF-8 ru_RU.UTF-8; \
  localedef -i ru_RU -f CP1251 ru_RU.CP1251

ENV LANG en_US.UTF-8

