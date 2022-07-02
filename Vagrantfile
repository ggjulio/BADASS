Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vagrant.plugins = "vagrant-reload"

  config.vm.provider "virtualbox" do |vb|    
    vb.cpus = 2
    vb.memory = 4096
    vb.gui = true
  end

  config.vm.provision "shell", inline: <<-SHELL
    set -ex
    sudo apt-get update
    sudo apt-get install -y gdm3
    echo "gdm3 installed."
    cd /tmp
    curl https://raw.githubusercontent.com/GNS3/gns3-server/master/scripts/remote-install.sh > gns3-remote-install.sh
    bash gns3-remote-install.sh
    echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
    sudo apt-get install -y gns3-gui
    echo "gns3 installed."
  SHELL

  config.vm.provision :reload

end
