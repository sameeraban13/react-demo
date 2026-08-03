#!/bin/bash
set -e

APP_DIR="/home/ubuntu"

if [ -d "${APP_DIR}" ] && [ -f "${APP_DIR}/docker-compose.yml" ]; then
  cd "${APP_DIR}"
  echo "Stopping and removing existing containers..."
  docker compose down || true
else
  echo "No existing deployment found, nothing to stop."
fi
