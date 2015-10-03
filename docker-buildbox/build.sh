#!/usr/bin/env sh


set -e

docker build -t keepass-buildbox "${0%/*}"

