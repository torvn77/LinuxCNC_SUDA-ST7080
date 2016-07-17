#

setp stepgen.3.position-scale $::AMPLIFIER_03(SCALE)
setp stepgen.3.maxaccel       $::AMPLIFIER_03(MAXACCEL)
setp stepgen.3.steplen        $::AMPLIFIER_03(STEPLEN)
setp stepgen.3.stepspace      $::AMPLIFIER_03(STEPSPACE)
setp stepgen.3.dirsetup       $::AMPLIFIER_03(DIRSETUP)
setp stepgen.3.dirhold        $::AMPLIFIER_03(DIRHOLD)


net lcnc.axis-03.amp-enable    => stepgen.3.enable
net lcnc.axis-03.motor-pos-cmd => stepgen.3.position-cmd
net lcnc.axis-03.motor-pos-fb  <= stepgen.3.position-fb

#net amplifier.03_step   <= stepgen.3.step
#net amplifier.03_dir    <= stepgen.3.dir

