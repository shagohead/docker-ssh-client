#!/usr/bin/env sh

echo "Preparing SSH key.."
eval $(ssh-agent -s)
echo "${SSH_PRIVATE_KEY}" | tr -d '\r' | ssh-add - > /dev/null
echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config
chmod 600 ~/.ssh/config

echo "Running up.."
exec "$@"
