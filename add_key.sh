#!/bin/bash

# URL of the public key
KEY_URL="https://raw.githubusercontent.com/grocore/ssh-keys/main/id_ed25519.pub"

# Adding a public key
mkdir -p ~/.ssh
chmod 700 ~/.ssh
curl -fsSL "$KEY_URL" | tee -a ~/.ssh/authorized_keys > /dev/null
chmod 600 ~/.ssh/authorized_keys

echo "The public key has been successfully added to ~/.ssh/authorized_keys"
