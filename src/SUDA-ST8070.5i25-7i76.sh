#!/usr/bin/env bash

thisfile=$(readlink -f "$0")
thisdir=$(dirname "$thisfile")
cd "$thisdir"

if [ -e SUDA-ST8070.5i25-7i76.ini.expanded ]; then rm SUDA-ST8070.5i25-7i76.ini.expanded; fi ;
halrun -U

#mate-terminal --geometry=150x65+800+28 --command 'linuxcnc SUDA-ST8070.5i25-7i76.ini'
linuxcnc SUDA-ST8070.5i25-7i76.ini

halrun -U

echo 'Pause !!!!!'
read 

exit

