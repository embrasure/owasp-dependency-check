#!/bin/sh

/tmp/dependency-check/bin/dependency-check.sh --scan "/src" \
  --format "ALL" \
  --project "dc-project" \
  --suppression "/tmp/suppressions/dependency-check-suppression.xml"