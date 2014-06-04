#!/bin/sh
ruby --version
gem --version
sudo apt-get install ruby1.9.3-dev
sudo gem install jekyll --version '= 1.5.1'
jekyll build

