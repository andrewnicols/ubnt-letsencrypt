#!/bin/sh

if [ $# -ne 1 ]
then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1

ACMEHOME=/config/.acme.sh

$ACMEHOME/acme.sh --issue -d $DOMAIN --dns --home $ACMEHOME --keypath /tmp/server.key --fullchainpath /tmp/full.cer --reloadcmd /config/scripts/reload.acme.sh
