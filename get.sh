#!/bin/bash
# ensure that curl is installed, if not print error message and exit
if ! [ -x "$(command -v git)" ]; then
    echo 'Error: git is not installed.' >&2
    exit 1
fi

# clone the repository
rm -rf /tmp/ansible-navigator-dev-container
git clone git@github.com:wwt/ansible-navigator-dev-container.git /tmp/ansible-navigator-dev-container
git checkout ttafsir-get-files


# Copy devcontainer.template.json from the repo and rename to devcontainer.json
mdkir .devcontainer
cp /tmp/ansible-navigator-dev-container/devcontainer.template .devcontainer/devcontainer.json


# Copy the dockerfile from the repo
cp /tmp/ansible-navigator-dev-container/Dockerfile .
