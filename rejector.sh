#!/usr/bin/env sh

trap "break" SIGINT

while true; do
  echo -e "HTTP/${HTTP_VERSION:-1.1} ${HTTP_STATUS:-403 Forbidden}\nDate: $(date -u +'%a, %d %b %Y %H:%M:%S %Z')\n" | nc -l -p ${PORT:-80}
done
