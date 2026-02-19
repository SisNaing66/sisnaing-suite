#!/bin/bash

INSTALL_DIR="/usr/local/sisnaing"

apt update -y
apt install git -y

rm -rf $INSTALL_DIR

git clone https://github.com/SisNaing66/sisnaing-suite.git $INSTALL_DIR

chmod +x $INSTALL_DIR/menu.sh
ln -sf $INSTALL_DIR/menu.sh /usr/bin/sisnaing

echo "Installation Complete!"
echo "Type: sisnaing"
