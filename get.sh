#!/bin/bash
# ensure that curl is installed, if not print error message and exit
if ! [ -x "$(command -v git)" ]; then
    echo 'Error: git is not installed.' >&2
    exit 1
fi

# clone the repository
git clone git@github.com:wwt/ansible-navigator-dev-container.git /tmp/ansible-navigator-dev-container


# Copy devcontainer.template.json from the repo and rename to devcontainer.json
mdkir -p .devcontainer
cp /tmp/ansible-navigator-dev-container/devcontainer.template .devcontainer/devcontainer.json


# Copy the dockerfile from the repo
cp /tmp/ansible-navigator-dev-container/Dockerfile .
