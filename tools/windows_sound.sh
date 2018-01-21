#!/bin/bash

echo "Configuring pulseaudio repository:"
add-apt-repository ppa:aseering/wsl-pulseaudio

# for non 14.04 releases
lsb_release -a | grep '14.04' || sed -i 's/xenial/trusty/g' /etc/apt/sources.list.d/aseering-ubuntu-wsl-pulseaudio-xenial.list

# Update and install pulseaudio
apt-get update
apt-get install pulseaudio

echo "Linux side configuration complete."
echo "Please follow the insructions to set up windows version of pulseaudio if you have not done so already."
exit 0
