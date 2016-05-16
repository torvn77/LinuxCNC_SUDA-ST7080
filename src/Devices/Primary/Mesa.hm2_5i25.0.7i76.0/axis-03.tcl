
#*******************
#  AXIS A
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.03.dirsetup        $::AMPLIFIER_03(DIRSETUP)
setp   hm2_5i25.0.stepgen.03.dirhold         $::AMPLIFIER_03(DIRHOLD)
setp   hm2_5i25.0.stepgen.03.steplen         $::AMPLIFIER_03(STEPLEN)
setp   hm2_5i25.0.stepgen.03.stepspace       $::AMPLIFIER_03(STEPSPACE)
setp   hm2_5i25.0.stepgen.03.position-scale  $::AMPLIFIER_03(SCALE)
setp   hm2_5i25.0.stepgen.03.step_type       $::AMPLIFIER_03(STEP_TYPE)
setp   hm2_5i25.0.stepgen.03.control-type    $::AMPLIFIER_03(CONTROL_TYPE)
setp   hm2_5i25.0.stepgen.03.maxaccel        $::AMPLIFIER_03(MAXACCEL)
setp   hm2_5i25.0.stepgen.03.maxvel          $::AMPLIFIER_03(MAXVEL)

net lcnc.03_amp-enable =>  hm2_5i25.0.stepgen.03.enable
net lcnc.03_pos-cmd    =>  hm2_5i25.0.stepgen.03.position-cmd
net lcnc.03_pos-fb     <=  hm2_5i25.0.stepgen.03.position-fb

