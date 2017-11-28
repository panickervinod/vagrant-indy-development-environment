sudo add-apt-repository ppa:mystic-mirage/pycharm -y

sudo apt update; sudo apt-get install -y pycharm-community

cp $SCRIPTPATH/pycharm.desktop /home/vagrant/.config/apps
cp $SCRIPTPATH/pycharm.desktop /home/vagrant/.local/share/applications
