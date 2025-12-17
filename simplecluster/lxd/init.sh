#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
export LANG="C.UTF-8" LC_ALL="C.UTF-8"

apt update
apt install -y \
  curl \
  net-tools \
  openssh-client \
  openssh-server \
  vim \
  wget
apt clean all
apt purge
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

mkdir -p /var/run/sshd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

systemctl enable ssh
systemctl start ssh

echo "root:${pass:-root}" | chpasswd

mkdir -p /root/.ssh
touch /root/.ssh/authorized_keys
chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_keys

cat << EOF >/root/.ssh/config
Host n?
  StrictHostKeyChecking accept-new
EOF
cat /root/.ssh/${key:-id_ed25519}.pub >/root/.ssh/authorized_keys
