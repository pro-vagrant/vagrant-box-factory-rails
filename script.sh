#!/usr/bin/env bash

echo "Install Puppet modules..."

# To install latest versions use one command:
#
#     sudo puppet module install gajdaw-symfony
#

sudo puppet module install puppetlabs-stdlib
sudo puppet module install gajdaw-ruby
sudo puppet module install gajdaw-rails
sudo puppet module install gajdaw-environment
sudo puppet module install gajdaw-ubuntu


