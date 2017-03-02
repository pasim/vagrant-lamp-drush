# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu-15.04"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/vivid/current/vivid-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.network :private_network, ip: "192.168.56.20"
  config.vm.network :forwarded_port, guest: 22, host: 2022, auto_correct: true
  config.vm.synced_folder "sites/drupal", "/var/www/html/drupal", :nfs => true
  config.vm.hostname = 'drupal'
  config.vm.provider :virtualbox do |vb|
    vb.name = "DRUPAL-EXPERIMENTS"
    vb.customize [ "modifyvm", :id, "--memory", "2096", "--cpus", "2", "--cpuexecutioncap", "75"]
    vb.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
  end
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file = 'site.pp'
    puppet.module_path = 'puppet/modules'
     puppet.options =  ["--verbose", "--hiera_config /vagrant/puppet/hiera.yaml"]
  end
end
