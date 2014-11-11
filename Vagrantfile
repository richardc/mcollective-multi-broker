# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'centos-65-puppet'
  config.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box'

  # https://github.com/adrienthebo/vagrant-hosts
  config.vm.provision :hosts

  config.vm.provision 'puppet' do |puppet|
    puppet.module_path    = 'puppet/modules'
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file  = 'site.pp'
  end

  config.vm.define :broker1 do |host|
    host.vm.hostname = 'broker1'
    host.vm.network :private_network, :ip => '10.0.15.2'
  end

  config.vm.define :broker2 do |host|
    host.vm.hostname = 'broker2'
    host.vm.network :private_network, :ip => '10.0.15.3'
  end

  config.vm.define :broker3 do |host|
    host.vm.hostname = 'broker3'
    host.vm.network :private_network, :ip => '10.0.15.4'
  end
end
