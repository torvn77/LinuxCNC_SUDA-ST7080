
#*******************
#  AXIS Y
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.01.dirsetup        $::AMPLIFIER_1(DIRSETUP)
setp   hm2_5i25.0.stepgen.01.dirhold         $::AMPLIFIER_1(DIRHOLD)
setp   hm2_5i25.0.stepgen.01.steplen         $::AMPLIFIER_1(STEPLEN)
setp   hm2_5i25.0.stepgen.01.stepspace       $::AMPLIFIER_1(STEPSPACE)
setp   hm2_5i25.0.stepgen.01.position-scale  $::AMPLIFIER_1(SCALE)
setp   hm2_5i25.0.stepgen.01.step_type       $::AMPLIFIER_1(STEP_TYPE)
setp   hm2_5i25.0.stepgen.01.control-type    $::AMPLIFIER_1(CONTROL_TYPE)
setp   hm2_5i25.0.stepgen.01.maxaccel        $::AMPLIFIER_1(MAXACCEL)
setp   hm2_5i25.0.stepgen.01.maxvel          $::AMPLIFIER_1(MAXVEL)

net lcnc.01_amp-enable =>  hm2_5i25.0.stepgen.01.enable
net lcnc.01_pos-cmd    =>  hm2_5i25.0.stepgen.01.position-cmd
net lcnc.01_pos-fb     <=  hm2_5i25.0.stepgen.01.position-fb
