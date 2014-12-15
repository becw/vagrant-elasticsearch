# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant version 1.6.5

Vagrant.configure("2") do |config|

  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  box_ip = '10.33.36.97'

  config.vm.network :private_network, ip: "#{box_ip}"

  config.vm.synced_folder "config", "/home/vagrant/config"

  config.vm.provision :shell, :path => "vagrant-setup.sh"

end
