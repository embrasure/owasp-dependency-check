#!/bin/sh

/tmp/dependency-check/bin/dependency-check.sh --scan "/tmp/src" \
  --format "ALL" \
  --project $(PROJECT_NAME)