#!/bin/bash
# Скрипт 7: PATH и количество файлов в каждом

IFS=':'
declare -A seen

for dir in $PATH; do
    if [ -n "${seen[$dir]}" ]; then
        continue
    fi
    seen[$dir]=1

    if [ -d "$dir" ]; then
        count=$(find "$dir" -maxdepth 1 -type f 2>/dev/null | wc -l)
        echo "$dir => $count"
    fi
done
