#!/bin/bash
set -e
VERSION='2016.1.2'
wget https://download.jetbrains.com/webide/PhpStorm-${VERSION}.tar.gz
echo 'a397faac301b6c87536873a819677328c7c5684234c6e2d266fc77fd5584853c *PhpStorm-2016.1.2.tar.gz'| sha256sum -c -
./update.sh
debuild -us -uc -b
curl -T ../phpstorm_${VERSION}_all.deb -utimwsuqld:$BINTRAY_API_KEY "https://api.bintray.com/content/timwsuqld/deb/phpstorm/${VERSION}/pool/main/p/phpstorm_${VERSION}_all.deb;deb_distribution=trusty;deb_component=main;deb_architecture=all"
