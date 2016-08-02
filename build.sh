#!/bin/bash
set -e
VERSION='2016.2'
wget https://download.jetbrains.com/webide/PhpStorm-${VERSION}.tar.gz
echo "2cba44d6106b82e9acac222683bbd2528a31b3311948aad9fdfff608c321eaa2 *PhpStorm-${VERSION}.tar.gz"| sha256sum -c -
./update.sh
debuild -us -uc -b
curl -T ../phpstorm_${VERSION}_all.deb -utimwsuqld:$BINTRAY_API_KEY "https://api.bintray.com/content/suqld/deb/phpstorm/${VERSION}/pool/main/p/phpstorm_${VERSION}_all.deb;deb_distribution=stable;deb_component=main;deb_architecture=all"
