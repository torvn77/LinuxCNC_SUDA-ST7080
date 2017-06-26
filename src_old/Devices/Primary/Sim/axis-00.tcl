#

setp stepgen.0.position-scale $::AMPLIFIER_00(SCALE)
setp stepgen.0.maxaccel       $::AMPLIFIER_00(MAXACCEL)
setp stepgen.0.steplen        $::AMPLIFIER_00(STEPLEN)
setp stepgen.0.stepspace      $::AMPLIFIER_00(STEPSPACE)
setp stepgen.0.dirsetup       $::AMPLIFIER_00(DIRSETUP)
setp stepgen.0.dirhold        $::AMPLIFIER_00(DIRHOLD)


net lcnc.axis-00.amp-enable    => stepgen.0.enable
net lcnc.axis-00.motor-pos-cmd => stepgen.0.position-cmd
net lcnc.axis-00.motor-pos-fb  <= stepgen.0.position-fb

#net amplifier.00_step   <= stepgen.0.step
#net amplifier.00_dir    <= stepgen.0.dir

