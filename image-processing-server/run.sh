#!/bin/bash

sudo ./install.sh
sudo service motion stop
sudo service motion start
watch sudo service motion status
