#!/bin/bash
# Скрипт 8: проверка одинаковых значений LC_* переменных

first=""
for var in $(env | grep '^LC_' | cut -d= -f1); do
    val="${!var}"
    if [ -z "$first" ]; then
        first="$val"
    elif [ "$val" != "$first" ]; then
        echo "Error: LC_* variables have different values" >&2
        exit 1
    fi
done
echo "All LC_* variables match"
