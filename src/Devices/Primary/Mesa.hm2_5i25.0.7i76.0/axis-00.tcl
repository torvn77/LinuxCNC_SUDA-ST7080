
#*******************
#  AXIS X
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.00.dirsetup        $::AMPLIFIER_00(DIRSETUP)
setp   hm2_5i25.0.stepgen.00.dirhold         $::AMPLIFIER_00(DIRHOLD)
setp   hm2_5i25.0.stepgen.00.steplen         $::AMPLIFIER_00(STEPLEN)
setp   hm2_5i25.0.stepgen.00.stepspace       $::AMPLIFIER_00(STEPSPACE)
setp   hm2_5i25.0.stepgen.00.position-scale  $::AMPLIFIER_00(SCALE)
setp   hm2_5i25.0.stepgen.00.step_type       $::AMPLIFIER_00(STEP_TYPE)
setp   hm2_5i25.0.stepgen.00.control-type    $::AMPLIFIER_00(CONTROL_TYPE)
setp   hm2_5i25.0.stepgen.00.maxaccel        $::AMPLIFIER_00(MAXACCEL)
setp   hm2_5i25.0.stepgen.00.maxvel          $::AMPLIFIER_00(MAXVEL)

net lcnc.00_amp-enable =>  hm2_5i25.0.stepgen.00.enable
net lcnc.00_pos-cmd    =>  hm2_5i25.0.stepgen.00.position-cmd
net lcnc.00_pos-fb     <=  hm2_5i25.0.stepgen.00.position-fb

