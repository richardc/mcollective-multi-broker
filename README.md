This repo constructs a three-node environment with the activemq configuration
from
https://github.com/puppetlabs/marionette-collective/tree/master/ext/activemq/examples/multi-broker

It uses a git submodule as nothing is up my sleeve.


# Setting up

    git clone https://github.com/richardc/mcollective-multi-broker
    cd mcollective-multi-broker
    git submodule init
    git submodule update
    vagrant plugin install vagrant-hosts
    vagrant up
    vagrant provison # second run is sometimes needed for vagrant-hosts

# Using

    vagrant ssh broker1 # or broker2, broker3
    mco ping
