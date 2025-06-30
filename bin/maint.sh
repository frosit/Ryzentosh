#!/usr/bin/env bash

CURRENT_DIR=$(dirname "$(readlink -f "$0")")
PROJECT_ROOT=$(dirname "$CURRENT_DIR")

VERSION="1.0.0"
SCRIPT=${0##*/}
USAGE="\
FROSCLI - ${__FROSCLI_VERSION}

Helper script for froscli

Usage: ${SCRIPT} [--option=...|-o=...] [arg]

    -h, --help                   Show this help menu


if [[ "$1" == "-h" || "$1" == "--help" || $# -eq 0 ]]; then
    echo -e "$USAGE"
    exit
fi

# Define argument
arg=$1;shift






${arg%%/} $@%    