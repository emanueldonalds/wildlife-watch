#!/bin/bash

if hash motion 2>/dev/null;
then
    echo "Motion is installed"
else
    echo "Motion is not installed, installing now."
    sudo apt-get install motion -y
fi

echo "Copying conf files"
sudo cp scripts/motion /etc/default/motion
sudo cp motion.conf /usr/local/etc/motion/motion.conf
sudo cp motion.conf /etc/motion/motion.conf

echo "Creating motion user"

echo "Install complete"
