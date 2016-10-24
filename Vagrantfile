$script = <<SCRIPT
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
cd /vagrant && sudo -u vagrant npm install
SCRIPT

Vagrant.configure("2") do |config|
    config.vm.box = "trusty64"
    config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    config.ssh.forward_agent = true
    config.vm.network :private_network, ip: "192.168.92.11"
    config.vm.network "forwarded_port", guest: 8080, host: 12345
    config.vm.provider "virtualbox" do |v|
        v.name = "d4k-maze"
    end
    config.vm.provision "shell", inline: $script
end
