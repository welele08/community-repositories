#!/bin/bash

if [ ! -e ../sark-functions.sh ]; then
    echo "sabayon-sark package must be installed"
    exit 1
fi

. ../sark-functions.sh

if [ ! -e build.yaml ]; then
    echo "Must be run from a repository directory containing a build.yaml"
    exit 1
fi

load_env_from_yaml build.yaml

# Speed up test runs by disabling slow syncs and mirror sorts
export SKIP_PORTAGE_SYNC="${SKIP_PORTAGE_SYNC:-1}"
export EQUO_MIRRORSORT="${EQUO_MIRRORSORT:-0}"
export DISTFILES=/usr/portage/distfiles
# Debug what env vars are being passed to the builder
printenv | sort

export REPOSITORY_NAME=welele
export CLEAN_PHASE="true"
build_all ${BUILD_ARGS}
