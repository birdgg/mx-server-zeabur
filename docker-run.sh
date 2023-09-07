#!/bin/bash

command="node index.js --redis_host=127.0.0.1 --db_host=127.0.0.1 \
  --allowed_origins=${ALLOWED_ORIGINS} \
  --jwt_secret=${JWT_SECRET} \
  --color"

exec $command