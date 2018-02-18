#!/bin/sh

export PLAYBOOK=setup-laptop.yml

pkg install beadm git ansible

echo Setup laptop using [${PLAYBOOK}]

if [ -e ${PLAYBOOK} ]; then
  ansible-playbook -c local ${PLAYBOOK}
else
  echo ERROR Ansible playbook [${PLAYBOOK}] not found !
  exit 12
fi

