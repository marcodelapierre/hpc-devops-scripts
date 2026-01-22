# hpc-devops-scripts
Scripts to deploy infrastructure for HPC

Note these deployments are intended for demo and testing purposes, not for production use.

Currently targeting the following use cases:
- Single VM with Vagrant
- Simple cluster (set of nodes with ssh connectivity)
- MAAS infrastructure manager
- Juju application orchestrator
- Warewulf cluster manager
- Kubernetes orchestrator
- OpenStack VM platform
- OpenNebula VM platform
- Basic OSS monitoring stack

Most deployments make use of Vagrant in conjuction with Libvirt. Useful Vagrant plugins include: vagrant-libvirt, vagrant-reload, vagrant-share, vagrant-disksize.  
Some deployments make use of Multipass, LXD or Docker.

