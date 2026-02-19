#!/bin/bash

INSTALL_DIR="/usr/local/sisnaing"

echo "Installing SisNaing Professional Suite..."

mkdir -p $INSTALL_DIR
cd $INSTALL_DIR

curl -O https://raw.githubusercontent.com/SisNaing66/sisnaing-suite/main/menu.sh
chmod +x menu.sh

ln -sf $INSTALL_DIR/menu.sh /usr/bin/sisnaing

echo "Installation Complete!"
echo "Type: sisnaing"
