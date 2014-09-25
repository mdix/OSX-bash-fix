#!/bin/sh
echo Renaming old bash and sh binaries
sudo cp /bin/bash /bin/bash.old
sudo cp /bin/sh /bin/sh.old

echo Copying new bash and sh binaries
sudo cp build/Release/bash /bin
sudo cp build/Release/sh /bin

echo Removing executable bit from old bash and sh binary
sudo chmod a-x /bin/bash.old /bin/sh.old
