Vagrant Box Factory: Rails
==========================

#1. Binary version

Binary version of a box is available at:
https://vagrantcloud.com/gajdaw/boxes/rails

#2. How to produce this box?

##2.1. With `build.sh` script

    ./build.sh

To produce arbitrary version, e.g. v0.4.5, use:

    git checkout v0.4.5
    ./build.sh

##2.2. Manually

    vagrant up
    vagrant package --vagrantfile VagrantfileToInclude --output "rails-v0.1.2.box"

##2.2. With packer

    packer build rails-box.json

