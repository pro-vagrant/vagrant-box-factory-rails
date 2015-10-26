#!/usr/bin/env bash

echo "Install Puppet modules..."

# To install latest versions use one command:
#
#     sudo puppet module install gajdaw-rails
#

sudo puppet module install puppetlabs-stdlib
sudo puppet module install puppetlabs-apt
sudo puppet module install puppetlabs-apache
sudo puppet module install puppetlabs-mysql
sudo puppet module install maestrodev-wget
sudo puppet module install gajdaw-ruby
sudo puppet module install gajdaw-diverse_functions
sudo puppet module install gajdaw-rails
sudo puppet module install gajdaw-environment
sudo puppet module install gajdaw-ubuntu
sudo puppet module install gajdaw-nodejs
sudo puppet module install gajdaw-bundle_install
sudo puppet module install gajdaw-vcsrepository
sudo puppet module install gajdaw-php5
sudo puppet module install gajdaw-phpmyadmin

