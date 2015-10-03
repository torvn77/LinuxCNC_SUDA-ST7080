#*******************
#  AXIS A
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.03.dirsetup        $::AXIS_3(DIRSETUP)
setp   hm2_5i25.0.stepgen.03.dirhold         $::AXIS_3(DIRHOLD)
setp   hm2_5i25.0.stepgen.03.steplen         $::AXIS_3(STEPLEN)
setp   hm2_5i25.0.stepgen.03.stepspace       $::AXIS_3(STEPSPACE)
setp   hm2_5i25.0.stepgen.03.position-scale  $::AXIS_3(STEP_SCALE)
setp   hm2_5i25.0.stepgen.03.step_type        0
setp   hm2_5i25.0.stepgen.03.control-type     0
setp   hm2_5i25.0.stepgen.03.maxaccel         $::AXIS_3(STEPGEN_MAXACCEL)
setp   hm2_5i25.0.stepgen.03.maxvel           $::AXIS_3(STEPGEN_MAXVEL)

net a-pos-fb  <=  hm2_5i25.0.stepgen.03.position-fb
net a-pos-cmd =>  hm2_5i25.0.stepgen.03.position-cmd
net a-enable  =>  hm2_5i25.0.stepgen.03.enable

