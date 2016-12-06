#!/bin/bash

PLIST_FILE=~/Library/LaunchAgents/com.henryaj.ambient.plist

if [ -f $PLIST_FILE ]; then
  launchctl unload $PLIST_FILE

  rm $PLIST_FILE
fi

launchctl remove "com.henryaj.ambient"

rm -f ~/.bosh-lite-sleep
rm -f ~/.bosh-lite-wake
