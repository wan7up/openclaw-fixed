#!/bin/sh
set -eu

mkdir -p /home/node/.openclaw
chown -R 1000:1000 /home/node/.openclaw

exec gosu 1000:1000 node dist/index.js gateway --bind lan --port 18789