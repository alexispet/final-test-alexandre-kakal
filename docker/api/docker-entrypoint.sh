#!/bin/sh

echo "executing docker-entrypoint.sh"

if [ $NODE_ENV == "development" ]; then
  echo "executing npm install in dev mode"
  npm install
fi

npm run db:import

exec "$@"
