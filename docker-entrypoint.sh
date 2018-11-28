#!/bin/sh

set -e

if [ "$1" = 'start' ]; then
	npm start
fi

exec "$@"
