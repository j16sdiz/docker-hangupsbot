#!/bin/sh
echo Copying Plugins
cp -rvp /plugins /hangoutsbot/hangupsbot/.

echo Installing Requirements
[ -f "/plugins/requirements.txt" ] && pip3 install -r /plugins/requirements.txt

cd /hangoutsbot/hangupsbot
exec python3 hangupsbot.py
