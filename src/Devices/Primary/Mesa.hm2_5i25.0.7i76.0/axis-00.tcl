
#*******************
#  AXIS X
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.00.dirsetup        $::AMPLIFIER_0(DIRSETUP)
setp   hm2_5i25.0.stepgen.00.dirhold         $::AMPLIFIER_0(DIRHOLD)
setp   hm2_5i25.0.stepgen.00.steplen         $::AMPLIFIER_0(STEPLEN)
setp   hm2_5i25.0.stepgen.00.stepspace       $::AMPLIFIER_0(STEPSPACE)
setp   hm2_5i25.0.stepgen.00.position-scale  $::AMPLIFIER_0(SCALE)
setp   hm2_5i25.0.stepgen.00.step_type       $::AMPLIFIER_0(STEP_TYPE)
setp   hm2_5i25.0.stepgen.00.control-type    $::AMPLIFIER_0(CONTROL_TYPE)
setp   hm2_5i25.0.stepgen.00.maxaccel        $::AMPLIFIER_0(MAXACCEL)
setp   hm2_5i25.0.stepgen.00.maxvel          $::AMPLIFIER_0(MAXVEL)

net lcnc.00_amp-enable =>  hm2_5i25.0.stepgen.00.enable
net lcnc.00_pos-cmd    =>  hm2_5i25.0.stepgen.00.position-cmd
net lcnc.00_pos-fb     <=  hm2_5i25.0.stepgen.00.position-fb
