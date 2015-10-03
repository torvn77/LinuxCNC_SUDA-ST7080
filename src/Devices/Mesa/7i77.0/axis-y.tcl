#*******************
#  AXIS Y
#*******************
net axis.1.amp-enable-out y-enable
net axis.1.motor-pos-cmd y-pos-cmd
net axis.1.motor-pos-fb <= y-pos-fb
net axis.1.index-enable <=> y-index-enable
# ---setup home / limit switch signals---
net axis.1.home-sw-in    <= y-home-sw
net axis.1.neg-lim-sw-in <= y-neg-limit
net axis.1.pos-lim-sw-in <= y-pos-limit

loadrt pid pid.y
addf pid.y.do-pid-calcs servo-thread
setp   pid.y.Pgain     S::AXIS_1(P)
setp   pid.y.Igain     S::AXIS_1(I)
setp   pid.y.Dgain     S::AXIS_1(D)
setp   pid.y.bias      S::AXIS_1(BIAS)
setp   pid.y.FF0       S::AXIS_1(FF0)
setp   pid.y.FF1       S::AXIS_1(FF1)
setp   pid.y.FF2       S::AXIS_1(FF2)
setp   pid.y.deadband  S::AXIS_1(DEADBAND)
setp   pid.y.maxoutput S::AXIS_1(MAX_OUTPUT)

net y-index-enable  <=>  pid.y.index-enable
net y-enable       => pid.y.enable
net y-output       => pid.y.output
net y-pos-cmd      => pid.y.command
net y-vel-fb       => pid.y.feedback-deriv
net y-pos-fb       => pid.y.feedback

#*******************
#        AXIS Y
#*******************

# ---PWM Generator signals/setup---

setp hm2_5i25.0.7i77.0.1.analogout1-scalemax S::AXIS_1(OUTPUT_SCALE)
setp hm2_5i25.0.7i77.0.1.analogout1-minlim   S::AXIS_1(OUTPUT_MIN_LIMIT)
setp hm2_5i25.0.7i77.0.1.analogout1-maxlim   S::AXIS_1(OUTPUT_MAX_LIMIT)

net hm2_5i25.0.7i77.0.1.analogout1 <= y-output

# ---Encoder feedback signals/setup---

setp hm2_5i25.0.encoder.01.counter-mode 0
setp hm2_5i25.0.encoder.01.filter 1
setp hm2_5i25.0.encoder.01.index-invert 0
setp hm2_5i25.0.encoder.01.index-mask 0
setp hm2_5i25.0.encoder.01.index-mask-invert 0
setp hm2_5i25.0.encoder.01.scale S::AXIS_1(ENCODER_SCALE)

net hm2_5i25.0.encoder.01.position      => y-pos-fb
net hm2_5i25.0.encoder.01.velocity      => y-vel-fb
net hm2_5i25.0.encoder.01.index-enable <=> y-index-enable
net hm2_5i25.0.encoder.01.rawcounts     => y-pos-rawcounts
