#!/bin/ash
telnetlogger -p /telnetlogger/passwds.txt -i /telnetlogger/ips.txt
echo "Telnet Honeypot is Running..."
exec "$@"
