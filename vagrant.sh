#!/bin/sh

sudo apt-get -y install build-essential && sudo /opt/vagrant_ruby/bin/gem install rdiscount --no-ri --no-rdoc
sudo /opt/vagrant_ruby/bin/gem install jekyll --version '= 1.5.1' --no-ri --no-rdoc
jekyll build

