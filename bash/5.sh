
#!/bin/bash
# Скрипт 5: последние строки из .log файлов

for file in /var/log/*.log; do
    if [ -f "$file" ]; then
        tail -n 1 "$file"
    fi
done > logs.log
