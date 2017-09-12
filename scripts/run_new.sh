#!/usr/bin/env bash

MY_IP=$(curl v4.ifconfig.co)

export NODE_NAME="antidote@$MY_IP"
make distclean console
