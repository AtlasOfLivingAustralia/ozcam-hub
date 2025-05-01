### ozcam-hub   [![Build Status](https://travis-ci.org/AtlasOfLivingAustralia/ozcam-hub.svg?branch=master)](https://travis-ci.org/AtlasOfLivingAustralia/ozcam-hub)

## Versions
- 8.x version, Java 17
- 7.x version, Java 11

Deploying a new version of ozcam-hub to Nexus
===========================================

Before deploying a new version, check that the biocache-hubs dependency version is up to date in grails-app/conf/BuildConfig.groovy.

Travis-CI is used to deploy new versions of ozcam-hub to Nexus. This is done automatically by updating the version number in the application.properties file and pushing to GitHub.

Once the new version of ozcam-hub is deployed to Nexus, the version number in ansible-inventories needs to change. To do this, the version number must be changed in: 

https://github.com/AtlasOfLivingAustralia/ansible-inventories/blob/master/ozcam.ala.org.au

If the biocache_hub_version is commented out then presumably it will use the most recent version it can find.

Deploying the current Nexus deployed version of OZCAM to a virtual machine
==========================================================================

If you have not yet installed Ansible, Vagrant, or VirtualBox, use the instructions at the [ALA Install README.md file](https://github.com/AtlasOfLivingAustralia/ala-install/blob/master/README.md) to install those first for your operating system.

Then, to deploy OZCAM onto a local virtual box install use the following instructions:

```
$ cd gitrepos
$ git clone git@github.com:AtlasOfLivingAustralia/ala-install.git
$ (cd ala-install/vagrant/ubuntu-trusty && vagrant up)
```

Add a line to your /etc/hosts file with the following information, replacing '10.1.1.3' with whatever IP address is assigned to the virtual machine that Vagrant starts up in VirtualBox:

```
10.1.1.3 ozcam.ala.org.au
```

Then you can clone the ansible instructions and install it onto the given machine:

```
$ git clone git@github.com:AtlasOfLivingAustralia/ansible-inventories.git
$ ansible-playbook -i ansible-inventories/ozcam.ala.org.au ala-install/ansible/ozcam-hub-standalone.yml --private-key ~/.vagrant.d/insecure_private_key -vvvv --user vagrant --sudo
```

Deploying to AWS EC2 production server
======================================

After testing locally, the same ansible scripts can be used to deploy to the production server which is an AWS EC2 server.

Comment out any testing line for ozcam.ala.org.au in your /etc/hosts file and add the following line:

```
203.101.224.143 ozcam.ala.org.au
```

Then deploy to that machine using the following command, replacing "MY_USER_NAME" with your login username:

```
$ ansible-playbook --user MY_USER_NAME -i ansible-inventories/ozcam.ala.org.au ala-install/ansible/ozcam-hub-standalone.yml --private-key ~/.ssh/id_rsa -vvvv --sudo --ask-sudo-pass
```
