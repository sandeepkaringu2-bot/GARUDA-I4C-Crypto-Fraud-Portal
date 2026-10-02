#!/bin/bash
# Restart contract for the preview: ensure app is on 0.0.0.0:8080 via npm run dev
if curl -sf -o /dev/null http://127.0.0.1:8080/; then
  exit 0
fi
npm run dev &
