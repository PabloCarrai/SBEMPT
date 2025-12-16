#!/bin/bash

source config.env 

TOKEN=$TOKENVALUE
CHAT_ID=$CHAT_IDVALUE
HOSTNAME=$(echo $HOSTNAME)
MESSAGE="$1 Backup en $HOSTNAME 🧉 "

# Send the message using curl
curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$MESSAGE" > /dev/null

