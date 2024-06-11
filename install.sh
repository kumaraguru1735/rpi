#!/bin/bash

# Check if the user is root
if [ "$EUID" -ne 0 ]
then
  echo "This script must be run as root."
  exit 1
fi

# Your script logic here
echo "Running as root..."


cp rpi /opt/streamer/
cp rpi.service /etc/systemd/system/
systemctl daemon-reload
systemctl start rpi.service
systemctl enable rpi.service