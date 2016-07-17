#

setp stepgen.1.position-scale $::AMPLIFIER_01(SCALE)
setp stepgen.1.maxaccel       $::AMPLIFIER_01(MAXACCEL)
setp stepgen.1.steplen        $::AMPLIFIER_01(STEPLEN)
setp stepgen.1.stepspace      $::AMPLIFIER_01(STEPSPACE)
setp stepgen.1.dirsetup       $::AMPLIFIER_01(DIRSETUP)
setp stepgen.1.dirhold        $::AMPLIFIER_01(DIRHOLD)


net lcnc.axis-01.amp-enable    => stepgen.1.enable
net lcnc.axis-01.motor-pos-cmd => stepgen.1.position-cmd
net lcnc.axis-01.motor-pos-fb  <= stepgen.1.position-fb

#net amplifier.01_step   <= stepgen.1.step
#net amplifier.01_dir    <= stepgen.1.dir

