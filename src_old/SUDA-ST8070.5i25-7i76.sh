#!/usr/bin/env bash

thisfile=$(readlink -f "$0")
thisdir=$(dirname "$thisfile")
cd "$thisdir"

# 
halrun -U
if [ -e SUDA-ST8070.5i25-7i76.ini.expanded ]; then rm SUDA-ST8070.5i25-7i76.ini.expanded; fi ;
if [ ! -e "/tmp/LinuxCNC" ]; then mkdir -p --mode=775 "/tmp/LinuxCNC"; fi;

disabled=1
if [ "$disabled" -eq 1 ] ;
	then echo -n;
	elif [ ! -e "/tmp/LinuxCNC" ]; 
		then
			mkdir -p --mode=775 "/tmp/LinuxCNC";
	elif [ -e "/tmp/LinuxCNC" ];
		then
			rm -fr "/tmp/LinuxCNC"
			mkdir -p --mode=775 "/tmp/LinuxCNC";
	else exit;
fi;

#mate-terminal --geometry=150x65+800+28 --command 'linuxcnc SUDA-ST8070.5i25-7i76.ini'
taskset 02 linuxcnc SUDA-ST8070.5i25-7i76.ini

halrun -U


#echo 'Pause !!!!!'
#read 
exit
# update 14-09
