Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vagrant.plugins = "vagrant-reload"

  config.vm.provider "virtualbox" do |vb|    
    vb.cpus = 2
    vb.memory = 4096
    vb.gui = true
    vb.customize ['modifyvm', :id, '--clipboard-mode', 'bidirectional']
    vb.customize ['modifyvm', :id, '--draganddrop', 'bidirectional']
    vb.customize ["modifyvm", :id, "--vram", "128"]
  end

  config.vm.synced_folder ".", "/home/vagrant/Desktop/badass", type: "virtualbox"
  config.vm.provision "shell", inline: <<-SHELL
    set -ex
    sudo apt-get update
    sudo apt-get install -y gdm3 ubuntu-desktop-minimal
    echo "gdm3 installed."
    cd /tmp
    curl https://raw.githubusercontent.com/GNS3/gns3-server/master/scripts/remote-install.sh > gns3-remote-install.sh
    bash gns3-remote-install.sh
    echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
    DEBIAN_FRONTEND=noninteractive sudo apt-get install -y gns3-gui
    echo "gns3 installed."
  SHELL

  config.vm.provision "shell", privileged: false,  inline: <<-SHELL
    gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'gns3.desktop', 'wireshark.desktop']"
    echo "gns3 and wireskark added to favorites."
  SHELL
  
  config.vm.provision :reload

end
