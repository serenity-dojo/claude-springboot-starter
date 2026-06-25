#!/bin/bash
RESULT=$(./gradlew check -q 2>&1)
STATUS=$?
if [ $STATUS -ne 0 ]; then
  echo "$RESULT" | tail -20 >&2
  exit 2
fi
exit 0