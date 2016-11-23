#!/bin/bash

if which VBoxManage; then
  vms=$(VBoxManage list runningvms | cut -d '"' -f 2)
  echo "$vms" | xargs -IN VBoxManage controlvm N savestate
fi
