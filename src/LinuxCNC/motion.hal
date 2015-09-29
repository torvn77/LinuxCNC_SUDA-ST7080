
#*******************
#  SPINDLE S
#*******************

net spindle-vel-cmd-rps        <=  motion.spindle-speed-out-rps
net spindle-vel-cmd-rps-abs    <=  motion.spindle-speed-out-rps-abs
net spindle-vel-cmd            <=  motion.spindle-speed-out
net spindle-vel-cmd-rpm-abs    <=  motion.spindle-speed-out-abs
net spindle-on                 <=  motion.spindle-on
net spindle-cw                 <=  motion.spindle-forward
net spindle-ccw                <=  motion.spindle-reverse
net spindle-brake              <=  motion.spindle-brake
net spindle-revs               =>  motion.spindle-revs
net spindle-at-speed           =>  motion.spindle-at-speed
net spindle-vel-fb             =>  motion.spindle-speed-in
net spindle-index-enable      <=>  motion.spindle-index-enable

#  ---motion control signals---

net in-position               <=  motion.in-position
net machine-is-enabled        <=  motion.motion-enabled

#  ---probe signal---

net probe-in     =>  motion.probe-input
