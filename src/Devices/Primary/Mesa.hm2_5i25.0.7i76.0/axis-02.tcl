
#*******************
#  AXIS Z
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.02.dirsetup        $::AMPLIFIER_2(DIRSETUP)
setp   hm2_5i25.0.stepgen.02.dirhold         $::AMPLIFIER_2(DIRHOLD)
setp   hm2_5i25.0.stepgen.02.steplen         $::AMPLIFIER_2(STEPLEN)
setp   hm2_5i25.0.stepgen.02.stepspace       $::AMPLIFIER_2(STEPSPACE)
setp   hm2_5i25.0.stepgen.02.position-scale  $::AMPLIFIER_2(SCALE)
setp   hm2_5i25.0.stepgen.02.step_type       $::AMPLIFIER_2(STEP_TYPE)
setp   hm2_5i25.0.stepgen.02.control-type    $::AMPLIFIER_2(CONTROL_TYPE)
setp   hm2_5i25.0.stepgen.02.maxaccel        $::AMPLIFIER_2(MAXACCEL)
setp   hm2_5i25.0.stepgen.02.maxvel          $::AMPLIFIER_2(MAXVEL)

net lcnc.02_amp-enable =>  hm2_5i25.0.stepgen.02.enable
net lcnc.02_pos-cmd    =>  hm2_5i25.0.stepgen.02.position-cmd
net lcnc.02_pos-fb     <=  hm2_5i25.0.stepgen.02.position-fb

