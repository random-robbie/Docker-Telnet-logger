#!/bin/ash
nohup /telnetlogger/telnetlogger -p passwds.txt -i ips.txt &
echo "Telnet Honeypot is Running..."
exec "$@"