#
#******************************
# connect miscellaneous signals
#******************************

unlinkp iocontrol.0.user-enable-out
unlinkp iocontrol.0.emc-enable-in
net loopback.linuxcnc.estop iocontrol.0.user-enable-out =>  iocontrol.0.emc-enable-in

net gpio_raw.probe-in          => motion.probe-input

net gpio_raw.00_sw_home_lim-min => axis.0.home-sw-in axis.0.neg-lim-sw-in
net gpio_raw.01_sw_home_lim-min => axis.1.home-sw-in axis.1.neg-lim-sw-in
net gpio_raw.02_sw_home_lim-max => axis.2.home-sw-in axis.2.pos-lim-sw-in

