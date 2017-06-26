loadrt trivkins
loadrt threads name1=logic-thread period1=250000 fp1=1 
loadrt $::EMCMOT(EMCMOT) servo_period_nsec=$::EMCMOT(SERVO_PERIOD) num_joints=$::TRAJ(AXES)
loadrt hostmot2
loadrt hm2_pci
hal setp hm2_5i25.0.sserial.port-0.fault-inc 0

addf hm2_5i25.0.read      servo-thread
addf motion-command-handler servo-thread
addf motion-controller servo-thread
addf hm2_5i25.0.write servo-thread

source signame.tcl


###################################################################
net x.enable  hm2_5i25.0.stepgen.00.enable
net x.pos-cmd hm2_5i25.0.stepgen.00.position-cmd
net x.pos-fb  hm2_5i25.0.stepgen.00.position-fb
hal setp      hm2_5i25.0.stepgen.00.step_type       0
hal setp      hm2_5i25.0.stepgen.00.maxaccel       $::AXIS_0(STEPGEN_MAXACCEL)
hal setp      hm2_5i25.0.stepgen.00.position-scale $::AXIS_0(SCALE)
hal setp      hm2_5i25.0.stepgen.00.steplen         2500
hal setp      hm2_5i25.0.stepgen.00.stepspace       2500
hal setp      hm2_5i25.0.stepgen.00.dirhold         5000
hal setp      hm2_5i25.0.stepgen.00.dirsetup        5000

net y.enable  hm2_5i25.0.stepgen.01.enable
net y.pos-cmd hm2_5i25.0.stepgen.01.position-cmd
net y.pos-fb  hm2_5i25.0.stepgen.01.position-fb
hal setp      hm2_5i25.0.stepgen.01.step_type       0
hal setp      hm2_5i25.0.stepgen.01.maxaccel       $::AXIS_1(STEPGEN_MAXACCEL)
hal setp      hm2_5i25.0.stepgen.01.position-scale $::AXIS_1(SCALE)
hal setp      hm2_5i25.0.stepgen.01.steplen         2500
hal setp      hm2_5i25.0.stepgen.01.stepspace       2500
hal setp      hm2_5i25.0.stepgen.01.dirhold         5000
hal setp      hm2_5i25.0.stepgen.01.dirsetup        5000

net z.enable  hm2_5i25.0.stepgen.02.enable
net z.pos-cmd hm2_5i25.0.stepgen.02.position-cmd
net z.pos-fb  hm2_5i25.0.stepgen.02.position-fb
hal setp      hm2_5i25.0.stepgen.02.step_type       0
hal setp      hm2_5i25.0.stepgen.02.maxaccel       $::AXIS_2(STEPGEN_MAXACCEL)
hal setp      hm2_5i25.0.stepgen.02.position-scale $::AXIS_2(SCALE)
hal setp      hm2_5i25.0.stepgen.02.steplen         2500
hal setp      hm2_5i25.0.stepgen.02.stepspace       2500
hal setp      hm2_5i25.0.stepgen.02.dirhold         5000
hal setp      hm2_5i25.0.stepgen.02.dirsetup        5000

###################################################################

net spindle.on      hm2_5i25.0.7i76.0.0.spinena
#net spindle.reverse hm2_5i25.0.7i76.0.0.spindir
net spindle.cmd     hm2_5i25.0.7i76.0.0.spinout
hal setp      hm2_5i25.0.7i76.0.0.spinout-maxlim  +18000
hal setp      hm2_5i25.0.7i76.0.0.spinout-minlim  -18000
hal setp      hm2_5i25.0.7i76.0.0.spinout-scalemax 30756
