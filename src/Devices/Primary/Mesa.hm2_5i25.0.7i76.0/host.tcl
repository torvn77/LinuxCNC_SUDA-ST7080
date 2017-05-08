
loadrt $::HOSTMOT2(DRIVER) config=[lindex $::HOSTMOT2(CONFIG) 0]

#setp hm2_5i25.0.sserial.port-0.fault-inc
#setp hm2_5i25.0.sserial.port-0.fault-dec 300
setp hm2_5i25.0.sserial.port-0.fault-lim 10000

#setp hm2_5i25.0.watchdog.timeout_ns 2000

addf hm2_5i25.0.read        servo-thread
addf hm2_5i25.0.write       servo-thread
addf hm2_5i25.0.read_gpio   logic-thread
addf hm2_5i25.0.write_gpio  logic-thread
