#!/bin/bash
set -e

APP_DIR="/home/ubuntu"
cd "${APP_DIR}"

echo "Checking container status..."
sleep 5

if [ "$(docker inspect -f '{{.State.Running}}' justdemo-app 2>/dev/null)" != "true" ]; then
  echo "Container justdemo-app is not running!"
  docker compose logs --tail=50
  exit 1
fi

echo "Container justdemo-app is running."
