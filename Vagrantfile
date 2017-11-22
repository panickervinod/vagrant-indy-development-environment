# -*- mode: ruby -*-
# vi: set ft=ruby :
#Vagrant.require_plugin "vagrant-reload"

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "bento/ubuntu-16.04"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
	# CPUs
	vb.cpus = 4
	# Clipboard
	vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
	# Video configuration
	vb.customize ["modifyvm", :id, "--vram", "64"]
	vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
	#proxy
	#echo 'Acquire::http::Proxy "http://192.168.1.19:3128";' >> /etc/apt/apt.conf
	#export http_proxy=http://192.168.1.19:3128

	#update repo info
    apt-get update

	#ensure non-interactive updates
	export DEBIAN_FRONTEND=noninteractive

	#update any package from the base distro
	apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

	#make the distro a "desktop"
	apt-get install -y ubuntu-desktop
	apt-get install `check-language-support -l en`

	#install Dev Software
	#apt-get install -y javacc

	#java8
	# add-apt-repository -y ppa:webupd8team/java
	# apt update
	#java8 ensure non-interactive
	# echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
	# echo debconf shared/accepted-oracle-license-v1-1 seen true |  debconf-set-selections
	# apt install -y oracle-java8-installer

  #apt-get install -y maven git git-flow git-cola meld subversion eclipse eclipse-egit testng chromium-browser chromium-chromedriver ant groovy docker jmeter jmeter-junit jmeter-java jmeter-http mc joe
  apt-get install -y git

	#HOME
	cd /home/vagrant

	#intelliJ
	# wget --quiet https://download.jetbrains.com/idea/ideaIC-2016.3.3.tar.gz

	# tar xf ideaIC*.tar.gz -C /opt/
	# rm ideaIC-2016.3.3.tar.gz
  #
	# wget --quiet http://selenium-release.storage.googleapis.com/3.0/selenium-server-standalone-3.0.1.jar
	# mkdir /opt/selenium
	# mv selenium-server-standalone-3.0.1.jar /opt/selenium
  #
	#smartGit
	# wget --quiet http://www.syntevo.com/static/smart/download/smartgit/smartgit-17_0_1.deb
	# dpkg -i smartgit-17_0_1.deb
  #
	#User configs
	#wget to solve cr/lf when host is not the linux
	# wget --quiet https://github.com/panickervinod/vagrant-indy-development-environment/archive/master.zip
	# unzip master
	# cp -vr vagrant-indy-development-environment-master/config/* .
	# cp -vr vagrant-indy-development-environment-master/config/.* .
  #
	# desktop-file-install vagrant-indy-development-environment-master/config/.gnome/apps/*

	# mv /home/vagrant/selenium-logo.png /opt/selenium
	# chmod a+x /home/vagrant/selenium.sh

	chown -R vagrant.vagrant /home/vagrant
	rm -fR vagrant-indy-development-environment-master

	update-desktop-database

  SHELL

  #reboot
  config.vm.provision :reload

  #config.vm.provision "shell", inline: <<-SHELL
  #	#anything after the reload
  #	setxkbmap es
  #SHELL

end
