# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "puphpet/centos65-x64"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.synced_folder "maintenance", "/var/www/html/maintenance"

  config.vm.provision "shell", path: 'provision.sh'

  if Vagrant.has_plugin? 'berkshelf'
    config.berkshelf.enabled = false
  end
end
