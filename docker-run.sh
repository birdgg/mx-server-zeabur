#!/bin/bash

command="node index.js --redis_host=${REDIS_HOST} --redis_port=${REDIS_PORT} --redis_password=${REDIS_PASSWORD} \
  --db_host=${MONGODB_HOST} --db_port=${MONGODB_PORT} --db_user=${MONGODB_USERNAME} --db_password=${MONGODB_PASSWORD} \
  --allowed_origins=${ALLOWED_ORIGINS} \
  --jwt_secret=${JWT_SECRET} \
  --color"

if [ -n "$ENCRYPT_KEY" ]; then
  command+=" --encrypt_key=${ENCRYPT_KEY}"
fi

if [ "$ENCRYPT_ENABLE" = "true" ]; then
  command+=" --encrypt_enable "
fi

exec $command