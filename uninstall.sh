#!/bin/bash

PLIST_FILE=~/Library/LaunchAgents/com.henryaj.ambien.plist

if [ -f $PLIST_FILE ]; then
  launchctl unload $PLIST_FILE

  rm $PLIST_FILE
fi

launchctl remove "com.henryaj.ambien"

rm -f ~/.ambien-bosh-lite-sleep
rm -f ~/.ambien-bosh-lite-wake
