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
export PORTAGE_CACHE=/usr/portage
# Debug what env vars are being passed to the builder
printenv | sort

#export CREATEREPO_PHASE="true"
#export REPOSITORY_NAME=capesos
export CLEAN_PHASE="true"
export CLEAN_CACHE=1
build_all ${BUILD_ARGS}
