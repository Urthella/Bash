#!/bin/bash

# hedef ip adresi ve port aralığı
target_ip="127.0.0.1"
start_port=1
end_port=65535

# sonuçları dosyaya yaz
for (( port=$start_port; port<=$end_port; port++ ))
do
  # port açık mı kontrol et
  (echo >/dev/tcp/$target_ip/$port) >/dev/null 2>&1 && echo "Port $port açık" >> results.txt
done