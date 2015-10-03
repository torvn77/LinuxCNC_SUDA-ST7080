#*******************
#  AXIS Z
#*******************
net axis.2.amp-enable-out z-enable
net axis.2.motor-pos-cmd z-pos-cmd
net axis.2.motor-pos-fb <= z-pos-fb
net axis.2.index-enable <=> z-index-enable
# ---setup home / limit switch signals---
net axis.2.home-sw-in    <= z-home-sw
net axis.2.neg-lim-sw-in <= z-neg-limit
net axis.2.pos-lim-sw-in <= z-pos-limit

loadrt pid pid.y
addf pid.z.do-pid-calcs servo-thread
setp   pid.z.Pgain     S::AXIS_2(P)
setp   pid.z.Igain     S::AXIS_2(I)
setp   pid.z.Dgain     S::AXIS_2(D)
setp   pid.z.bias      S::AXIS_2(BIAS)
setp   pid.z.FF0       S::AXIS_2(FF0)
setp   pid.z.FF1       S::AXIS_2(FF1)
setp   pid.z.FF2       S::AXIS_2(FF2)
setp   pid.z.deadband  S::AXIS_2(DEADBAND)
setp   pid.z.maxoutput S::AXIS_2(MAX_OUTPUT)

net z-index-enable  <=>  pid.z.index-enable
net z-enable       => pid.z.enable
net z-output       => pid.z.output
net z-pos-cmd      => pid.z.command
net z-vel-fb       => pid.z.feedback-deriv
net z-pos-fb       => pid.z.feedback

#*******************
#        AXIS Y
#*******************

# ---PWM Generator signals/setup---

setp hm2_5i25.0.7i77.0.2.analogout1-scalemax S::AXIS_2(OUTPUT_SCALE)
setp hm2_5i25.0.7i77.0.2.analogout1-minlim   S::AXIS_2(OUTPUT_MIN_LIMIT)
setp hm2_5i25.0.7i77.0.2.analogout1-maxlim   S::AXIS_2(OUTPUT_MAX_LIMIT)

net hm2_5i25.0.7i77.0.2.analogout1 <= z-output

# ---Encoder feedback signals/setup---

setp hm2_5i25.0.encoder.02.counter-mode 0
setp hm2_5i25.0.encoder.02.filter 1
setp hm2_5i25.0.encoder.02.index-invert 0
setp hm2_5i25.0.encoder.02.index-mask 0
setp hm2_5i25.0.encoder.02.index-mask-invert 0
setp hm2_5i25.0.encoder.02.scale S::AXIS_2(ENCODER_SCALE)

net hm2_5i25.0.encoder.02.position      => z-pos-fb
net hm2_5i25.0.encoder.02.velocity      => z-vel-fb
net hm2_5i25.0.encoder.02.index-enable <=> z-index-enable
net hm2_5i25.0.encoder.02.rawcounts     => z-pos-rawcounts
