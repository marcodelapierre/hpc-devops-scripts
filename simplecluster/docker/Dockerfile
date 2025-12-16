FROM ubuntu:24.04

ENV DEBIAN_FRONTEND="noninteractive"
ENV LANG="C.UTF-8" LC_ALL="C.UTF-8"
RUN apt update && \
  apt install -y \
    curl \
    net-tools \
    openssh-client \
    openssh-server \
    vim \
    wget \
  && apt clean all && \
  apt purge && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /var/run/sshd

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

ARG PASS="root"
RUN echo "root:${PASS}" | chpasswd

ARG KEY="id_ed25519"
RUN mkdir -p /root/.ssh && \
  touch /root/.ssh/authorized_keys && \
  chmod 700 /root/.ssh && \
  chmod 600 /root/.ssh/authorized_keys
RUN cat << EOF >/root/.ssh/config
Host n?
  StrictHostKeyChecking accept-new
EOF
COPY ${KEY}     /root/.ssh/
COPY ${KEY}.pub /root/.ssh/
RUN cat /root/.ssh/${KEY}.pub >/root/.ssh/authorized_keys

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
