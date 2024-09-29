#!/usr/bin/env sh

script_directory=$(dirname "$0")

command gawk -f "$script_directory/btabs.awk" "$@"
