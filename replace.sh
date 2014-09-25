#!/bin/sh
sudo cp /bin/bash /bin/bash.old
sudo cp /bin/sh /bin/sh.old
build/Release/bash --version # GNU bash, version 3.2.52(1)-release
build/Release/sh --version   # GNU bash, version 3.2.52(1)-release
sudo cp build/Release/bash /bin
sudo cp build/Release/sh /bin
sudo chmod a-x /bin/bash.old /bin/sh.old
