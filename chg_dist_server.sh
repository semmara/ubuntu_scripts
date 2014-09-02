#!/bin/sh

# delete existing lists
sudo rm -R /var/lib/apt/lists/
# recreate directory
sudo mkdir -p /var/lib/apt/lists/partial/
# change distribution server to main
sudo sed -i 's/de.archive.ubuntu.com/archive.ubuntu.com/g' /etc/apt/sources.list
# update
sudo apt-get update
# fix dependencies
sudo apt-get -f install
# update existing packages
sudo apt-get dist-upgrade

