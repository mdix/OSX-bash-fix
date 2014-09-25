#!/bin/sh
mkdir bash-fix
cd bash-fix
curl https://opensource.apple.com/tarballs/bash/bash-92.tar.gz | tar zxf -
cd bash-92/bash-3.2
curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-052 | patch -p0
cd ..
xcodebuild

