#
net lcnc.spindle.cmd-abs  <= motion.spindle-speed-out-abs
net lcnc.spindle.cmd      <= motion.spindle-speed-out
net lcnc.spindle.fb       => motion.spindle-speed-in
net lcnc.spindle.cw       <= motion.spindle-forward
#net lcnc.spindle.ccw      <= motion.spindle-reverse
#net lcnc.spindle.brake    <= motion.spindle-brake
#
#net lcnc.spindle.at-speed => motion.spindle-at-speed
#sets lcnc.spindle.at-speed true

net lcnc.tool.offset.x <= motion.tooloffset.x
net lcnc.tool.offset.y <= motion.tooloffset.y
net lcnc.tool.offset.z <= motion.tooloffset.z


#net lcnc.motion.pogram-line <= motion.pogram-line
net lcnc.motion.current-vel <= motion.current-vel
