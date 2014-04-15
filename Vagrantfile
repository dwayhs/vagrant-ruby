# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Box
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Provision
  config.vm.provision :shell, :path => "provision.sh"

  # Network
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  # Rails
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Sinatra
  config.vm.network :forwarded_port, guest: 6000, host: 6000

  # MongoDB
  config.vm.network :forwarded_port, guest: 27017, host: 27017

  # Redis
  config.vm.network :forwarded_port, guest: 6379, host: 6379

end
