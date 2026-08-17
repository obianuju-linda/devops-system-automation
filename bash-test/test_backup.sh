#!/bin/bash

SCRIPT="$(dirname "$0")/../scripts/backup.sh"

if [ -f "$SCRIPT" ]; then
    echo "✅ backup.sh exists"
else
    echo "❌ backup.sh is missing"
    exit 1
fi

if bash -n "$SCRIPT"; then
    echo "✅ backup.sh syntax is valid"
else
    echo "❌ backup.sh contains a syntax error"
    exit 1
fi

echo "✅ All tests passed"