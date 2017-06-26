#

setp stepgen.2.position-scale $::AMPLIFIER_02(SCALE)
setp stepgen.2.maxaccel       $::AMPLIFIER_02(MAXACCEL)
setp stepgen.2.steplen        $::AMPLIFIER_02(STEPLEN)
setp stepgen.2.stepspace      $::AMPLIFIER_02(STEPSPACE)
setp stepgen.2.dirsetup       $::AMPLIFIER_02(DIRSETUP)
setp stepgen.2.dirhold        $::AMPLIFIER_02(DIRHOLD)


net lcnc.axis-02.amp-enable    => stepgen.2.enable
net lcnc.axis-02.motor-pos-cmd => stepgen.2.position-cmd
net lcnc.axis-02.motor-pos-fb  <= stepgen.2.position-fb

#net amplifier.03_step   <= stepgen.2.step
#net amplifier.03_dir    <= stepgen.2.dir

