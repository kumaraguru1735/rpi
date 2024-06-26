#!/bin/bash

# Check if the user is root
if [ "$EUID" -ne 0 ]
then
  echo "This script must be run as root."
  exit 1
fi

# Your script logic here
echo "Running as root..."


apt install ffmpeg -y
cp rpi /opt/streamer/
chmod +x /opt/streamer/rpi
cp rpi.service /etc/systemd/system/
systemctl daemon-reload
systemctl start rpi.service
systemctl enable rpi.service