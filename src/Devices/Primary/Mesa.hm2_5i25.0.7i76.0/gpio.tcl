#******************************
# connect miscellaneous signals
#******************************

#  ---estop signals---

#net estop-out => hm2_5i25.0.7i76.0.0.input-??
#net estop-in  <= hm2_5i25.0.7i76.0.0.input-??

#  ---Tool measurent sensors signals---

net gpio_raw.probe-in <= hm2_5i25.0.7i76.0.0.input-11-not

#  ---home signals---
#
net gpio_raw.00_sw_home_lim-min <= hm2_5i25.0.7i76.0.0.input-08-not
net gpio_raw.01_sw_home_lim-min <= hm2_5i25.0.7i76.0.0.input-09-not
net gpio_raw.02_sw_home_lim-max <= hm2_5i25.0.7i76.0.0.input-10-not
