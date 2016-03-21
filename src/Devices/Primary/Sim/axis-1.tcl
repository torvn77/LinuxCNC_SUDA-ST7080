
setp stepgen.1.position-scale $::AMPLIFIER_1(SCALE)
setp stepgen.1.steplen 1
setp stepgen.1.stepspace 0
setp stepgen.1.dirsetup 1
setp stepgen.1.dirhold 0
setp stepgen.1.maxaccel $::AMPLIFIER_1(MAXACCEL)

net lcnc.1_amp-enable  => stepgen.1.enable
net lcnc.1_pos-cmd     => stepgen.1.position-cmd
net amplifier.1_pos-fb <= stepgen.1.position-fb
net amplifier.1_step   <= stepgen.1.step
net amplifier.1_dir    <= stepgen.1.dir

