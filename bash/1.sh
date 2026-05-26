#!/bin/bash
#!/bin/bash
# Скрипт 1: запись loadavg в файл каждую секунду

if [ $# -ne 2 ]; then
    echo "Usage: $0 <filename> <duration_seconds>"
    exit 1
fi

filename=$1
duration=$2
end=$((SECONDS + duration))

while [ $SECONDS -lt $end ]; do
    timestamp=$(date "+%d.%m.%y %H:%M")
    load=$(cat /proc/loadavg)
    echo "[$timestamp = $load]" >> "$filename"
    sleep 1
done
