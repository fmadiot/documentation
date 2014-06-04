#!/bin/sh
ruby --version
gem --version
sudo apt-get -y install build-essential && sudo gem install rdiscount --no-ri --no-rdoc
sudo gem install jekyll --version '= 1.5.1' --no-ri --no-rdoc
jekyll build

