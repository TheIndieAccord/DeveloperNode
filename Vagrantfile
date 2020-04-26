# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # config.vbguest.auto_update = false
  config.vm.box = "bento/centos-7.7"

  # config.disksize.size = '50GB'

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.synced_folder "~/.aws", "/home/vagrant/.aws"
  config.vm.synced_folder "../", "/home/vagrant/repos"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|

    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
  
    # Customize the amount of memory on the VM:
    vb.memory = 2048

    # Customize the amount of cpu cores on the VM:
    vb.cpus = 2
  end
  # #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", path: "bootstrap.sh"

  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.provision :docker

end
