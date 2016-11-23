#!/bin/bash

if which VBoxManage; then
  vms=$(VBoxManage list vms | grep bosh-lite | cut -d '"' -f 2)
  echo "$vms" | xargs -IN VBoxManage controlvm N resume
fi
