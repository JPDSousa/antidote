#!/usr/bin/env bash

MY_IP=$(curl v4.ifconfig.co)

export NODE_NAME="antidote@$MY_IP"
mkdir -p log
touch ./log/console.log
./_build/default/rel/antidote/bin/env start && sleep 10 && tail -f ./log/console.log &
