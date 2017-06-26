loadrt or2 count=2

#addf hm2_5i25.0.read_gpio gpio-thread
addf or2.0 logic-thread
addf or2.1 logic-thread

#addf hm2_5i25.0.write_gpio gpio-thread

###################################################################
net x.min-home hm2_5i25.0.7i76.0.0.input-04-not
net y.min-home hm2_5i25.0.7i76.0.0.input-05-not
net z.max-home hm2_5i25.0.7i76.0.0.input-06-not

net probe.in or2.0.out
net probe.auto.000  or2.1.out                      or2.0.in0
net probe.pad       hm2_5i25.0.7i76.0.0.input-07-not => or2.0.in1
net probe.toolseter hm2_5i25.0.7i76.0.0.input-10 => or2.1.in0
net probe.indicator hm2_5i25.0.7i76.0.0.input-11 => or2.1.in1

