#!/usr/bin/env bash

echo "Install Puppet modules..."

# To install latest versions use one command:
#
#     sudo puppet module install gajdaw-rails
#

sudo puppet module install puppetlabs-apt
sudo puppet module install maestrodev-wget
sudo puppet module install gajdaw-ruby
sudo puppet module install gajdaw-rails
sudo puppet module install gajdaw-environment
sudo puppet module install gajdaw-nodejs
sudo puppet module install gajdaw-bundle_install
sudo puppet module install gajdaw-phpmyadmin
sudo puppet module install example42-postfix

