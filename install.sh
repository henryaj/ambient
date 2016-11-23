#!/bin/bash

set -e

cd $(dirname $0)

if ! brew list | grep sleepwatcher; then
  brew install sleepwatcher
  brew services start sleepwatcher
fi

PLIST_FILE=~/Library/LaunchAgents/com.henryaj.ambien.plist

if [ -f $PLIST_FILE ]; then
  launchctl unload $PLIST_FILE
fi

ln -sfv `pwd`/ambien.plist ~/Library/LaunchAgents/com.henryaj.ambien.plist

ln -sf `pwd`/sleep.sh ~/.ambien-bosh-lite-sleep
ln -sf `pwd`/wake.sh ~/.ambien-bosh-lite-wake

launchctl load $PLIST_FILE

echo "Ambien installed. BOSH Lite will be suspended on system sleep."
