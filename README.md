# ansible self study

## Prerequisites

* Vagrant (Virtualbox)
* Make
* Ansible

## Commands

```sh
make start # run vagrant machines
make ssh-web1 # ssh to vms
make ssh-web2
make ping-webservers # ping vms
make ping-localhost # ping localhost

ansible-playbook -i inventory.ini nginx.yml # run playbook with inventory
```
