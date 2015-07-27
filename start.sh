#!/bin/sh
echo Copying Plugins
cp -rvp /plugins /hangoutsbot/hangupsbot/.
cp -rvp /sinks /hangoutsbot/hangupsbot/.

echo Installing Requirements
[ -f "/plugins/requirements.txt" ] && pip3 install -r /plugins/requirements.txt
[ -f "/sinks/requirements.txt" ] && pip3 install -r /sinks/requirements.txt

cd /hangoutsbot/hangupsbot
exec python3 hangupsbot.py
