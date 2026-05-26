#!/bin/bash
# Скрипт 3: подсчёт строк в файлах

for file in "$@"; do
    if [ -f "$file" ]; then
        count=$(wc -l < "$file")
        echo "$file => $count"
    else
        echo "$file => not found"
    fi
done
