#*******************
#  SPINDLE ENCODER
#*******************

unlinkp motion.spindle-speed-out
unlinkp motion.spindle-speed-in
net loopback.lcnc.spindle.fb <= motion.spindle-speed-out    => motion.spindle-speed-in

