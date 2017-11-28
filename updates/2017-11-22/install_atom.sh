sudo add-apt-repository ppa:webupd8team/atom -y

sudo apt update; sudo apt-get install -y atom

cp $SCRIPTPATH/atom.desktop /home/vagrant/.config/apps
cp $SCRIPTPATH/atom.desktop /home/vagrant/.local/share/applications
