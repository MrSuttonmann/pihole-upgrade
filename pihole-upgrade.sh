#!/bin/bash
if [[ "$EUID" = 0 ]]; then
    docker compose pull pihole/pihole
    docker rm -f pihole
    docker compose up -d
else
    echo "Please run script as root."
    exit 1
fi
