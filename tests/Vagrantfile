# -*- mode: ruby -*-
# vi: set ft=ruby :

DISTRO="debian/buster64"

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# All Vagrant configuration is done below.
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    # disable default synced folder
    config.vm.synced_folder ".", "/vagrant", type: "rsync", disabled: true

    # virtualbox settings
    config.vm.provider "virtualbox" do |vb|
        vb.memory = 1024 # 1 GiB of memory
        vb.cpus = 1      # 1 CPU Cores
    end

    # libvirt settings
    config.vm.provider :libvirt do |vb|
        vb.memory = 1024 # 1 GiB of memory
        vb.cpus = 1      # 1 CPU Cores
    end

    # hub machine
    config.vm.define :hub do |hub|
        hub.vm.box = DISTRO
        hub.vm.hostname = "hub"
        hub.vm.network "private_network", ip: "192.168.100.90"
        hub.vm.network :forwarded_port, guest: 443, host: 8443
    end

    # host machine
    config.vm.define :host do |host|
        host.vm.box = DISTRO
        host.vm.hostname = "host"
        host.vm.network "private_network", ip: "192.168.100.91"
    end
end
