until [ -f /tmp/env_created ] do
echo >&2 "$(date +%Y%m%dt%H%M%S) Waiting for Environment Setup"
sleep 1
done
clear
