#

setp stepgen.4.position-scale $::AMPLIFIER_04(SCALE)
setp stepgen.4.maxaccel       $::AMPLIFIER_04(MAXACCEL)
setp stepgen.4.steplen        $::AMPLIFIER_04(STEPLEN)
setp stepgen.4.stepspace      $::AMPLIFIER_04(STEPSPACE)
setp stepgen.4.dirsetup       $::AMPLIFIER_04(DIRSETUP)
setp stepgen.4.dirhold        $::AMPLIFIER_04(DIRHOLD)


net lcnc.axis-04.amp-enable    => stepgen.4.enable
net lcnc.axis-04.motor-pos-cmd => stepgen.4.position-cmd
net lcnc.axis-04.motor-pos-fb  <= stepgen.4.position-fb

#net amplifier.04_step   <= stepgen.4.step
#net amplifier.04_dir    <= stepgen.4.dir

