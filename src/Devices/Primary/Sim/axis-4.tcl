
setp stepgen.4.position-scale $::AMPLIFIER_4(SCALE)
setp stepgen.4.steplen 1
setp stepgen.4.stepspace 0
setp stepgen.4.dirsetup 1
setp stepgen.4.dirhold 0
setp stepgen.4.maxaccel $::AMPLIFIER_4(MAXACCEL)

net lcnc.4_amp-enable  => stepgen.4.enable
net lcnc.4_pos-cmd     => stepgen.4.position-cmd
net amplifier.4_pos-fb <= stepgen.4.position-fb
net amplifier.4_step   <= stepgen.4.step
net amplifier.4_dir    <= stepgen.4.dir

