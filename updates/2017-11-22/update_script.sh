#!/bin/bash

#### Sample update_script #####
#SCRIPT=`realpath $0`
#SCRIPTPATH=`dirname $SCRIPT`

#sudo bash $SCRIPTPATH/some_script.sh

#####

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

sudo bash $SCRIPTPATH/install_atom.sh
sudo bash $SCRIPTPATH/install_pycharm.sh

exit $?
