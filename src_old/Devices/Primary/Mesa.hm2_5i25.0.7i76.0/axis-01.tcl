
#*******************
#  AXIS Y
#*******************

# Step Gen signals/setup

setp   hm2_5i25.0.stepgen.01.dirsetup        $::AMPLIFIER_01(DIRSETUP)
setp   hm2_5i25.0.stepgen.01.dirhold         $::AMPLIFIER_01(DIRHOLD)
setp   hm2_5i25.0.stepgen.01.steplen         $::AMPLIFIER_01(STEPLEN)
setp   hm2_5i25.0.stepgen.01.stepspace       $::AMPLIFIER_01(STEPSPACE)
setp   hm2_5i25.0.stepgen.01.position-scale  $::AMPLIFIER_01(SCALE)
setp   hm2_5i25.0.stepgen.01.step_type       $::AMPLIFIER_01(STEP_TYPE)
setp   hm2_5i25.0.stepgen.01.control-type    $::AMPLIFIER_01(CONTROL_TYPE)
setp   hm2_5i25.0.stepgen.01.maxaccel        $::AMPLIFIER_01(MAXACCEL)
setp   hm2_5i25.0.stepgen.01.maxvel          $::AMPLIFIER_01(MAXVEL)

net lcnc.axis-01.amp-enable       =>  hm2_5i25.0.stepgen.01.enable
net lcnc.axis-01.motor-pos-cmd    =>  hm2_5i25.0.stepgen.01.position-cmd
net lcnc.axis-01.motor-pos-fb     <=  hm2_5i25.0.stepgen.01.position-fb

