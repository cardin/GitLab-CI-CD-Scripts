#!/usr/bin/env bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source $SCRIPT_DIR/credentials.sh

GITLAB_URL="https://gitlab.ai-stack.dso/"
GITLAB_HOSTNAME="gitlab.ai-stack.dso"
VOL=gitlab-runner

if [[ ! $(command -v jq) ]]; then
    echo "Application 'jq' not found!"
    echo "To install:"
    echo "- yum install jq"
    echo "- or, visit 'https://stedolan.github.io/jq' and add it to \$PATH"
    exit -1
fi
