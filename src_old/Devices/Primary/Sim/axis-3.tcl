
setp stepgen.3.position-scale $::AMPLIFIER_3(SCALE)
setp stepgen.3.steplen 1
setp stepgen.3.stepspace 0
setp stepgen.3.dirsetup 1
setp stepgen.3.dirhold 0
setp stepgen.3.maxaccel $::AMPLIFIER_3(MAXACCEL)

net lcnc.3_amp-enable  => stepgen.3.enable
net lcnc.3_pos-cmd     => stepgen.3.position-cmd
net amplifier.3_pos-fb <= stepgen.3.position-fb
net amplifier.3_step   <= stepgen.3.step
net amplifier.3_dir    <= stepgen.3.dir

