[![Build Status - Master](https://travis-ci.org/juju4/ansible-gift.svg?branch=master)](https://travis-ci.org/juju4/ansible-gift)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-gift.svg?branch=devel)](https://travis-ci.org/juju4/ansible-gift/branches)

[![Actions Status - Master](https://github.com/juju4/ansible-gift/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-gift/actions?query=branch%3Amaster)
[![Actions Status - Devel](https://github.com/juju4/ansible-gift/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-gift/actions?query=branch%3Adevel)

# “Glorious Incident Feedback Tools” team ppa ansible role

Ansible role to setup Ubuntu ppa of “Glorious Incident Feedback Tools” team
https://launchpad.net/~gift/+archive/ubuntu/stable
Commonly used for SIFT, GRR, Timesketch...

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0
 * 2.2
 * 2.5

### Operating systems

Ubuntu 14.04, 16.04, 18.04 (only ones supported by the ppa at Feb 2019).
Fedora 31 to 33 (through [COPR](https://github.com/log2timeline/plaso/wiki/Fedora-Core-Packaged-Release)).
RHEL/Centos are not supported.

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.gift
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.gift
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.gift/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

