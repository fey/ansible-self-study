# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.define 'web1' do  |web|
    web.vm.box = 'ubuntu/focal64'
    web.vm.network 'private_network', ip: '192.168.33.10'
    web.vm.hostname = 'web1'
    web.vm.provider :virtualbox do |vb|
      vb.name = 'web1'
    end

    web.vm.provision "shell" do |s|
      ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
      s.inline = <<-SHELL
        echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
        echo #{ssh_pub_key} >> /root/.ssh/authorized_keys
      SHELL
    end

    web.vm.provider 'virtualbox' do |vb|
      vb.memory = '1024'
    end
  end

  config.vm.define 'web2' do  |web|
    web.vm.box = 'ubuntu/focal64'
    web.vm.network 'private_network', ip: '192.168.33.11'
    web.vm.hostname = 'web2'
    web.vm.provider :virtualbox do |vb|
      vb.name = 'web2'
    end

    web.vm.provision "shell" do |s|
      ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
      s.inline = <<-SHELL
        echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
        echo #{ssh_pub_key} >> /root/.ssh/authorized_keys
      SHELL
    end

    web.vm.provider 'virtualbox' do |vb|
      vb.memory = '1024'
    end
  end
end
