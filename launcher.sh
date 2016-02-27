#!/bin/sh
# launcher.sh
# navigate to home directory, then to this directory, then execute ruby script, then back home
# http://www.instructables.com/id/Raspberry-Pi-Launch-Python-script-on-startup/

cd /
cd home/pi/Code/RubyBabblePi
sudo ruby stream.rb
cd
