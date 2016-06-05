#
loadrt $::EMCMOT(KINEMATICS)
# base_period_nsec=$::EMCMOT(BASE_PERIOD)
loadrt $::EMCMOT(EMCMOT) servo_period_nsec=$::EMCMOT(SERVO_PERIOD) traj_period_nsec=$::EMCMOT(TRAJ_PERIOD) num_joints=$::TRAJ(AXES) num_dio=$::EMCMOT(NUM_DIO) num_aio=$::EMCMOT(NUM_AIO)
addf motion-command-handler servo-thread
addf motion-controller servo-thread

net lcnc.axis-00.amp-enable         <= axis.0.amp-enable-out
net lcnc.axis-00.amp-fault          => axis.0.amp-fault-in
net lcnc.axis-00.motor-pos-cmd      <= axis.0.motor-pos-cmd
net lcnc.axis-00.motor-pos-fb       => axis.0.motor-pos-fb
#
net lcnc.axis-00.motor-offset       => axis.0.motor-offset
net lcnc.axis-00.coarse-pos-cmd     <= axis.0.coarse-pos-cmd

net lcnc.axis-01.amp-enable         <= axis.1.amp-enable-out
net lcnc.axis-01.amp-fault          => axis.1.amp-fault-in
net lcnc.axis-01.motor-pos-cmd      <= axis.1.motor-pos-cmd
net lcnc.axis-01.motor-pos-fb       => axis.1.motor-pos-fb
#
net lcnc.axis-01.motor-offset       => axis.1.motor-offset
net lcnc.axis-01.coarse-pos-cmd     <= axis.1.coarse-pos-cmd

net lcnc.axis-02.amp-enable         <= axis.2.amp-enable-out
net lcnc.axis-02.amp-fault          => axis.2.amp-fault-in
net lcnc.axis-02.motor-pos-cmd      <= axis.2.motor-pos-cmd
net lcnc.axis-02.motor-pos-fb       => axis.2.motor-pos-fb
#
net lcnc.axis-02.motor-offset       => axis.2.motor-offset
net lcnc.axis-02.coarse-pos-cmd     <= axis.2.coarse-pos-cmd
 
net lcnc.estop_out             <= iocontrol.0.user-enable-out
net lcnc.estop_in              => iocontrol.0.emc-enable-in

net lcnc.spindle.cmd-abs  <= motion.spindle-speed-out-abs
net lcnc.spindle.cmd      <= motion.spindle-speed-out
net lcnc.spindle.fb       => motion.spindle-speed-in
net lcnc.spindle.at-speed => motion.spindle-at-speed
net lcnc.spindle.cw       <= motion.spindle-forward
net lcnc.spindle.ccw      <= motion.spindle-reverse
net lcnc.spindle.brake    <= motion.spindle-brake
#
#sets lcnc.spindle.at-speed true

net lcnc.tool.prepare          <= iocontrol.0.tool-prepare
net lcnc.tool.prepared         => iocontrol.0.tool-prepared
net lcnc.tool.change           <= iocontrol.0.tool-change
net lcnc.tool.changed          => iocontrol.0.tool-changed
net lcnc.tool.current-number   <= iocontrol.0.tool-number
net lcnc.tool.prep-number      <= iocontrol.0.tool-prep-number
net lcnc.tool.prep-pocket      <= iocontrol.0.tool-prep-pocket
net lcnc.tool.offset.x <= motion.tooloffset.x
net lcnc.tool.offset.y <= motion.tooloffset.y
net lcnc.tool.offset.z <= motion.tooloffset.z



#net lcnc.motion.pogram-line <= motion.pogram-line
net lcnc.motion.current-vel <= motion.current-vel

#net lcnc.axisui.notifications.clear       => axisui.notifications-clear
#net lcnc.axisui.notifications.clear-error => axisui.notifications-clear-error
#net lcnc.axisui.notifications.clear-info  => axisui.notifications-clear-info

