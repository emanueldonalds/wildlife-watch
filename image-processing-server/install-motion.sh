sudo apt-get install autoconf automake autopoint build-essential pkgconf libtool libzip-dev libjpeg-dev git libavformat-dev libavcodec-dev libavutil-dev libswscale-dev libavdevice-dev libwebp-dev gettext libmicrohttpd-dev 

cd ~
git clone https://github.com/Motion-Project/motion.git
cd motion
autoreconf -fiv
./configure
make
make install
