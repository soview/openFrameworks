#!/bin/bash

if [ $EUID != 0 ]; then
	echo "this script must be run using sudo"
	echo ""
	echo "usage:"
	echo "sudo ./install_dependencies.sh"
	exit $exit_code
   exit 1
fi

apt-get update
apt-get install alsa-base alsa-tools alsa-utils gstreamer0.10-alsa gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-plugins-base libgstreamer-plugins-base0.10-0 libgstreamer0.10-0 libgstreamer0.10-dev gstreamer0.10-plugins-good gstreamer0.10-tools libupnp-dev automake cvs libavcodec-dev libavformat-dev libavutil-dev libswscale-dev freeglut3-dev libasound2-dev libxmu-dev libxxf86vm-dev g++ libgl1-mesa-dev libglu1-mesa-dev libraw1394-dev libudev-dev libdrm-dev gstreamer0.10-ffmpeg libglew-dev libopenal-dev libsndfile-dev libfreeimage-dev libcairo2-dev libgtk2.0-dev libjack-jackd2-dev python-lxml python-argparse portaudio19-dev
exit_code=$?
if [ $exit_code != 0 ]; then
	echo "error installing packages, there could be an error with your internet connection"
	exit $exit_code
fi

