#******************************
# connect miscellaneous signals
#******************************

#  ---estop signals---

#net estop-out => hm2_5i25.0.7i76.0.0.input-??
#net estop-in  <= hm2_5i25.0.7i76.0.0.input-??

#  ---Tool measurent sensors signals---

#loadrt or2 count=2
#addf or2.0 logic-thread
#addf or2.1 logic-thread

net gpio_raw.probe-in <= hm2_5i25.0.7i76.0.0.input-07-not

#  ---home signals---
#
net gpio_raw.00_sw_home_lim-min <= hm2_5i25.0.7i76.0.0.input-04-not
net gpio_raw.01_sw_home_lim-min <= hm2_5i25.0.7i76.0.0.input-05-not
net gpio_raw.02_sw_home_lim-max <= hm2_5i25.0.7i76.0.0.input-06-not



#  ---Tool measurent sensors signals---
#net gpio_raw.probe-in.07-not   <= hm2_5i25.0.7i76.0.0.input-07-not => or2.0.in0
#net gpio_raw.probe-in.10   <= hm2_5i25.0.7i76.0.0.input-10 => or2.0.in1
#net gpio_raw.probe-in.11   <= hm2_5i25.0.7i76.0.0.input-11 => or2.1.in0
#net gpio_raw.probe-in.or20     <= or2.0.out                        => or2.1.in1
#net gpio_raw.probe-in                                          <= or2.1.out

