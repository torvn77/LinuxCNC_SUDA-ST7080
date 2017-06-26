
setp stepgen.0.position-scale $::AMPLIFIER_0(SCALE)
setp stepgen.0.steplen 1
setp stepgen.0.stepspace 0
setp stepgen.0.dirsetup 1
setp stepgen.0.dirhold 0
setp stepgen.0.maxaccel $::AMPLIFIER_0(MAXACCEL)

net lcnc.0_amp-enable  => stepgen.0.enable
net lcnc.0_pos-cmd     => stepgen.0.position-cmd
net amplifier.0_pos-fb <= stepgen.0.position-fb
net amplifier.0_step   <= stepgen.0.step
net amplifier.0_dir    <= stepgen.0.dir

