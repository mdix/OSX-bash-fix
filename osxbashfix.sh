#!/bin/sh
cd /tmp
mkdir bash-fix
cd bash-fix
curl https://opensource.apple.com/tarballs/bash/bash-92.tar.gz | tar zxf -
cd bash-92/bash-3.2
curl https://ftp.gnu.org/pub/gnu/bash/bash-3.2-patches/bash32-052 | patch -p0
cd ..
xcodebuild
sudo cp /bin/bash /bin/bash.old
sudo cp /bin/sh /bin/sh.old
build/Release/bash --version # GNU bash, version 3.2.52(1)-release
build/Release/sh --version   # GNU bash, version 3.2.52(1)-release
sudo cp build/Release/bash /bin
sudo cp build/Release/sh /bin
sudo chmod a-x /bin/bash.old /bin/sh.old
