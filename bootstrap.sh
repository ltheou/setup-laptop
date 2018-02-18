#!/bin/sh

export PLAYBOOK=setup-laptop.yml

pkg install beadm git ansible

echo Setup laptop using [${PLAYBOOK}]

if [ -e ${PLAYBOOK} ]; then
  ansible-playbook ${PLAYBOOK} -i localhost, -c local
else
  echo ERROR Ansible playbook [${PLAYBOOK}] not found !
  exit 12
fi

