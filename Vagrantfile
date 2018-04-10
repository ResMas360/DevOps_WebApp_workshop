# -*- mode: ruby -*-
# vi: set ft=ruby
Vagrant.configure(2) do |config|
  config.vm.box = "geerlingguy/centos7"
  config.vm.define :ops do |ops|
    ops.vm.hostname = 'devops.lab.com'
    ops.vm.network :private_network, ip: "192.168.1.2"
    ops.vm.provision "shell", path: "configure_ops_machine.sh"
  end
  config.vm.define :prod do |prod|
    prod.vm.hostname = 'simefactory.lab.com'
    prod.vm.network :private_network, ip:"192.168.1.3"
    prod.vm.provision "shell", path: "configure_prod_machine.sh"
  end
end
