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

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path    = "manifests"
    puppet.manifest_file     = "site.pp"
    puppet.module_path       = %w{modules vendor/modules}
    puppet.hiera_config_path = "hiera.yaml"
    puppet.working_directory = "/vagrant"
  end
end
