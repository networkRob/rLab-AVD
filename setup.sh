#!/bin/bash

ansible-galaxy collection install arista.avd

pip3 install -r /home/avd/arista-ansible/ansible-avd/ansible_collections/arista/avd/requirements.txt
