#!/usr/bin/env bash

thisdir=$(dirname `readlink -f "$0"`)
cd "$thisdir"

# 
halrun -U
if [ -e machine_name.ini.expanded ]; then rm machine_name.ini.expanded; fi ;


enabled=1
if   [ ! -e "/tmp/LinuxCNC" ]; 
	then 
		mkdir -p --mode=775 "/tmp/LinuxCNC";
elif [ -d "/tmp/LinuxCNC" ] && [ "$enabled" -eq 1 ];
	then
		rm -fr "/tmp/LinuxCNC";
		mkdir -p --mode=775 "/tmp/LinuxCNC";
elif [ -d "/tmp/LinuxCNC" ] && [ "$enabled" -eq 0 ];
	then
		echo -n
else
	echo "/tmp/LinuxCNC acess or file type error, script exit"
	exit;
fi;

#mate-terminal --geometry=150x65+800+28 --command 'linuxcnc machine-name.ini'
taskset 01 lxterminal --geometry=150x65+800+28 --command 'linuxcnc machine_name.ini'
#taskset 01 linuxcnc machine_name.ini

halrun -U


#echo 'Pause !!!!!'
#read 
exit
# update 14-09
