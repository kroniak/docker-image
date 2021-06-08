#!/usr/bin/env bash
set -euo pipefail

command -v docker >/dev/null 2>&1 || {
    echo >&2 "This script requires the docker to be installed"
    exit 1
}

SCRIPT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t kroniak/docker-image:19.03.8 "$SCRIPT_ROOT/../19.03.8"
docker build -t kroniak/docker-image:latest "$SCRIPT_ROOT/.."

docker rmi -f $(docker images -q --filter "dangling=true")