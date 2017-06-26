
setp stepgen.2.position-scale $::AMPLIFIER_2(SCALE)
setp stepgen.2.steplen 1
setp stepgen.2.stepspace 0
setp stepgen.2.dirsetup 1
setp stepgen.2.dirhold 0
setp stepgen.2.maxaccel $::AMPLIFIER_2(MAXACCEL)

net lcnc.3_amp-enable  => stepgen.2.enable
net lcnc.3_pos-cmd     => stepgen.2.position-cmd
net amplifier.3_pos-fb <= stepgen.2.position-fb
net amplifier.3_step   <= stepgen.2.step
net amplifier.3_dir    <= stepgen.2.dir

