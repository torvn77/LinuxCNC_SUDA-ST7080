#*******************
#  AXIS Y
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.01.dirsetup        S::AXIS_1(DIRSETUP)
setp   hm2_5i25.0.stepgen.01.dirhold         S::AXIS_1(DIRHOLD)
setp   hm2_5i25.0.stepgen.01.steplen         S::AXIS_1(STEPLEN)
setp   hm2_5i25.0.stepgen.01.stepspace       S::AXIS_1(STEPSPACE)
setp   hm2_5i25.0.stepgen.01.position-scale  S::AXIS_1(STEP_SCALE)
setp   hm2_5i25.0.stepgen.01.step_type        0
setp   hm2_5i25.0.stepgen.01.control-type     0
setp   hm2_5i25.0.stepgen.01.maxaccel         S::AXIS_1(STEPGEN_MAXACCEL)
setp   hm2_5i25.0.stepgen.01.maxvel           S::AXIS_1(STEPGEN_MAXVEL)

net y-pos-fb  <=  hm2_5i25.0.stepgen.01.position-fb
net y-pos-cmd =>  hm2_5i25.0.stepgen.01.position-cmd
net y-enable  =>  hm2_5i25.0.stepgen.01.enable
