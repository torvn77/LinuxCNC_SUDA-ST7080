
#*******************
#  AXIS B
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.04.dirsetup        $::AMPLIFIER_4(DIRSETUP)
setp   hm2_5i25.0.stepgen.04.dirhold         $::AMPLIFIER_4(DIRHOLD)
setp   hm2_5i25.0.stepgen.04.steplen         $::AMPLIFIER_4(STEPLEN)
setp   hm2_5i25.0.stepgen.04.stepspace       $::AMPLIFIER_4(STEPSPACE)
setp   hm2_5i25.0.stepgen.04.position-scale  $::AMPLIFIER_4(SCALE)
setp   hm2_5i25.0.stepgen.04.step_type       $::AMPLIFIER_4(STEP_TYPE)
setp   hm2_5i25.0.stepgen.04.control-type    $::AMPLIFIER_4(CONTROL_TYPE)
setp   hm2_5i25.0.stepgen.04.maxaccel        $::AMPLIFIER_4(MAXACCEL)
setp   hm2_5i25.0.stepgen.04.maxvel          $::AMPLIFIER_4(MAXVEL)

net lcnc.04_amp-enable =>  hm2_5i25.0.stepgen.04.enable
net lcnc.04_pos-cmd    =>  hm2_5i25.0.stepgen.04.position-cmd
net lcnc.04_pos-fb     <=  hm2_5i25.0.stepgen.04.position-fb
