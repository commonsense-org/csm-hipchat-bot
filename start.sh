#!/bin/bash
set -e

if [ -n "$REDIS_PORT" ]; then
  export REDIS_URL="${REDIS_PORT}"
else 
  echo "REDIS_URL does not exist. Please link to redis container"
  exit 1
fi

exec "$@"
