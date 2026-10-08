#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

username="$1"

chage -d 2025-01-01 "$username"
chage -E 2026-12-31 "$username"
chage -m 7 "$username"
chage -M 90 "$username"

chage -l "$username"
