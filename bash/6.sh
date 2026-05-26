#!/bin/bash
# Скрипт 6: ожидание появления файла

if [ "$FOO" = "5" ] && [ "$BAR" = "1" ]; then
    exit 1
fi

until [ -f "fix.txt" ]; do
    sleep 1
done

echo "File appeared"
