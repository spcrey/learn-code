#!/bin/bash
set -e

wget "https://storage.flutter-io.cn/flutter_infra_release/releases/stable/linux/flutter_linux_3.29.3-stable.tar.xz?_gl=1*zrrdn*_ga*NTY1NDkzMTQ1LjE3Mjc3OTIzMjY.*_ga_HPSFTRXK91*czE3NDczMzMwMjUkbzUkZzEkdDE3NDczMzMwMzMkajUyJGwwJGgw"
tar -xf flutter_linux_3.29.3-stable.tar.xz -C "$(jq -r '.installPath' config.json | envsubst)/"

echo '# flutter' >> ~/.bashrc
echo "export PATH=\"$(jq -r '.installPath' config.json | envsubst)/flutter/bin:\$PATH\"" >> ~/.bashrc
source ~/.bashrc
rm flutter_linux_3.29.3-stable.tar.xz
