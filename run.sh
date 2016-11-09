#!/bin/bash
set -e

cd /app

if ! [ -e package.json ]; then
  echo "package.json does not exist";
  exit 1;
fi

if ! [ -e backstop.json ]; then
  echo "backstop.json does not exist";
  exit 1;
fi

if ! [ -d node_modules ]; then
  echo "Please install your node_modules locally";
  exit 1;
fi

if [ "$1" = 'reference' ]; then
  yarn run backstop-start
  backstop "$@"
elif [ "$1" = 'test' ]; then
  yarn run backstop-start
  backstop test
else
  echo "unknown command"
  exit 1
fi
