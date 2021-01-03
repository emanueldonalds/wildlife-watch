#!/bin/bash

if ! grep "start_x=1" /boot/config.txt
then
    echo "sed config.txt"
    sed -i "s/start_x=0/start_x=1/g" /boot/config.txt
else
    echo "Skipping camera config"
fi

if ! [ -d "v4l2rtspserver" ]
then
    echo "Cloning v412rtpspserver"
    git clone https://github.com/mpromonet/v4l2rtspserver.git

    echo "Installing v312rtspserver"
    cd v4l2rtspserver
    sudo apt-get install cmake -y
    cmake . && make
    sudo make install
    cd ..
else
    echo "Skipping installation of v412rtspserver"
fi

echo "Adding start script to init.d"
sudo cp run-rtsp.sh /etc/init.d/
sudo chmod +x /etc/init.d/run-rtsp.sh
sudo update-rc.d run-rtsp.sh defaults

echo "Setup complete, please reboot."
