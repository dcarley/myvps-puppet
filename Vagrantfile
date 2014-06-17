# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "dan.vps"

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.auto_detect = true
  end

  config.vm.network "private_network", ip: "172.16.16.10"

  config.vm.provision :shell, :inline => "/vagrant/tools/puppet-apply"
end
