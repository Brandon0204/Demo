#!/usr/bin/env bash

currentVersion=`grep '_VERSION:' ./cloudbuild.yaml  | sed -e s/^.*_VERSION:// | sed -e 's/^[[:space:]]*//' | tail -c +2`
newVersion=`echo $currentVersion | awk '{print $1 + 0.1}'`

sed -i "s/v$currentVersion/v$newVersion/" ./cloudbuild.yaml
