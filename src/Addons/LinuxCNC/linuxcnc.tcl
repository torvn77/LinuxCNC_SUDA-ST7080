#
loadrt $::EMCMOT(KINEMATICS)
loadrt $::EMCMOT(EMCMOT) base_period_nsec=$::EMCMOT(BASE_PERIOD) traj_period_nsec=$::EMCMOT(TRAJ_PERIOD) servo_period_nsec=$::EMCMOT(SERVO_PERIOD) num_joints=$::TRAJ(AXES) num_dio=$::EMCMOT(NUM_DIO) num_aio=$::EMCMOT(NUM_AIO)
addf motion-command-handler servo-thread
addf motion-controller servo-thread

net lcnc.00_amp-enable   <= axis.0.amp-enable-out
net lcnc.00_pos-cmd      <= axis.0.motor-pos-cmd
net lcnc.00_pos-fb  => axis.0.motor-pos-fb
net lcnc.00_joint-pos-fb <= axis.0.joint-pos-fb

net lcnc.01_amp-enable   <= axis.1.amp-enable-out
net lcnc.01_pos-cmd      <= axis.1.motor-pos-cmd
net lcnc.01_pos-fb  => axis.1.motor-pos-fb
net lcnc.01_joint-pos-fb <= axis.1.joint-pos-fb

net lcnc.02_amp-enable   <= axis.2.amp-enable-out
net lcnc.02_pos-cmd      <= axis.2.motor-pos-cmd
net lcnc.02_pos-fb  => axis.2.motor-pos-fb
net lcnc.2_joint-pos-fb <= axis.2.joint-pos-fb

net lcnc.estop_out             <= iocontrol.0.user-enable-out
net lcnc.estop_in              => iocontrol.0.emc-enable-in
net lcnc.tool_prepare          <= iocontrol.0.tool-prepare
net lcnc.tool_prepared         => iocontrol.0.tool-prepared
net lcnc.tool_change           <= iocontrol.0.tool-change
net lcnc.tool_changed          => iocontrol.0.tool-changed
net lcnc.tool_number           <= iocontrol.0.tool-prep-number

#net lcnc.spindle_cmd-rpm     <= motion.spindle-speed-out
#net lcnc.spindle_cmd-rpm-abs <= motion.spindle-speed-out-abs
#net lcnc.spindle_cmd-rps     <= motion.spindle-speed-out-rps
 net lcnc.spindle_cmd-rps-abs <= motion.spindle-speed-out-rps-abs


net lcnc.spindle_at-speed    => motion.spindle-at-speed
sets lcnc.spindle_at-speed true
