# ansible-role-amazon-codedeploy

[![Build Status](https://travis-ci.com/diodonfrost/ansible-role-amazon-codedeploy.svg?branch=master)](https://travis-ci.com/diodonfrost/ansible-role-amazon-codedeploy)
[![CI](https://github.com/diodonfrost/ansible-role-amazon-codedeploy/workflows/CI/badge.svg)](https://github.com/diodonfrost/ansible-role-amazon-codedeploy/actions)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.amazon_codedeploy-660198.svg)](https://galaxy.ansible.com/diodonfrost/amazon_codedeploy)

This role provide a compliance for install amazon-ssm on your target host.

## Requirements

This role was developed using Ansible 2.5 Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.amazon_codedeploy` to install the role on your system.

Supported platforms:

```yaml
- name: EL
  versions:
    - 8
    - 7
- name: Fedora
  versions:
    - 29
    - 28
    - 27
    - 26
- name: Debian
  versions:
    - buster
    - stretch
    - jessie
- name: Ubuntu
  versions:
    - disco dingo
    - bionic
    - xenial
    - trusty
- name: Amazon
  versions:
    - 2017.12
    - 2016.03
    - 2013.09
```

## Role Variables

This role does not have a variable

```yaml
---
# defaults file for ansible-role-amazon-codedeploy

# Aws region where to download CodeDeploy install script
aws_region: eu-west-1

# Complete url where to download CodeDeploy install script
codedeploy_install_script_url: "{{ default_codedeploy_install_script_url }}"

# Where to store codedeploy agent install script
codedeploy_install_script_dest: "{{ default_codedeploy_install_script_dest }}"
```

## Dependencies

None

## Example Playbook

This is a sample playbook file for deploying the Ansible Galaxy 
role in a localhost and installing latest amazon-ssm version.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.amazon_codedeploy
```

Change aws region where to download CodeDeploy install script
```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.amazon_codedeploy
      vars:
        aws_region: eu-west-3
```

## Local Testing

The preferred way of locally testing the role is to use Docker. You will have to install Docker on your system.

### Testing with Docker

```shell
# Test role on CentOS 8
distribution=centos-8 molecule test

# Test role on Ubuntu 16.04
distribution=ubuntu-16.04 molecule test
```
## License

Apache 2

## Author Information

This role was created in 2020 by diodonfrost.
