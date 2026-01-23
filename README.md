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

Most deployments make use of **Vagrant** in conjuction with **Libvirt**.  
Useful Vagrant plugins include: `vagrant-libvirt`, `vagrant-reload`, `vagrant-share`, `vagrant-disksize`.  
Some deployments make use of *Multipass*, *LXD* or *Docker*.

Note: at present code in this repo assumes an X86 computer architecture (`amd64`/`x86_64`). If needed it should be straightforward to extend support to ARM architectures (`arm64`/`aarch64`).
