#!/bin/bash
set -e
wget https://download.jetbrains.com/webide/PhpStorm-2016.1.2.tar.gz
echo 'a397faac301b6c87536873a819677328c7c5684234c6e2d266fc77fd5584853c *PhpStorm-2016.1.2.tar.gz'| sha256sum -c -
./update.sh
debuild -us -uc -b
