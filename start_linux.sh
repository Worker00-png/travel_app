#!/bin/sh
cd -- "$(dirname -- "$0")" || exit 1
if command -v python3 >/dev/null 2>&1; then
  (sleep 1; xdg-open 'http://127.0.0.1:8765/' >/dev/null 2>&1 || true) &
  python3 -m http.server 8765 --bind 127.0.0.1
else
  echo 'Нужен Python 3. Установите python3 либо откройте index.html в браузере.'
  exit 1
fi
