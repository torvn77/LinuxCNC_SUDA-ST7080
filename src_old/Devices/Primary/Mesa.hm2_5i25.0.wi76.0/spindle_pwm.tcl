#*******************
#  SPINDLE S
#*******************

# ---digital potentionmeter output signals/setup---

setp   hm2_5i25.0.wi76.0.0.spinout-minlim    $::SPINDLE_PWM(CMD_MIN_LIMIT)
setp   hm2_5i25.0.wi76.0.0.spinout-maxlim    $::SPINDLE_PWM(CMD_MAX_LIMIT)
setp   hm2_5i25.0.wi76.0.0.spinout-scalemax  $::SPINDLE_PWM(CMD_SCALE)

net lcnc.spindle.cmd-abs  => hm2_5i25.0.wi76.0.0.spinout
net lcnc.spindle.cw       => hm2_5i25.0.wi76.0.0.spinena
net lcnc.spindle.ccw      => hm2_5i25.0.wi76.0.0.spindir

