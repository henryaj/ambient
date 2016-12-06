#!/bin/bash

set -e

cd $(dirname $0)

if ! brew list | grep sleepwatcher > /dev/null; then
  brew install sleepwatcher
  brew services start sleepwatcher
fi

PLIST_FILE=~/Library/LaunchAgents/com.henryaj.ambient.plist

if [ -f $PLIST_FILE ]; then
  launchctl unload $PLIST_FILE
fi

cp `pwd`/ambient.plist ~/Library/LaunchAgents/com.henryaj.ambient.plist

cp `pwd`/sleep.sh ~/.bosh-lite-sleep
cp `pwd`/wake.sh ~/.bosh-lite-wake

launchctl load $PLIST_FILE

echo "Ambient installed. BOSH Lite will be suspended on system sleep."
