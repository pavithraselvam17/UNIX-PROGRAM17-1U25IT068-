#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

username="$1"

# Create user if it does not exist
if ! id "$username" >/dev/null 2>&1; then
    sudo useradd "$username"
fi

sudo chage -d 2025-01-01 "$username"
sudo chage -E 2026-12-31 "$username"
sudo chage -m 7 "$username"
sudo chage -M 90 "$username"

sudo chage -l "$username"
