###################################################################

net      x.enable   axis.0.amp-enable-out
net      x.pos-cmd  axis.0.motor-pos-cmd
net      x.pos-fb   axis.0.motor-pos-fb
net      x.min-home => axis.0.home-sw-in
net      x.min-home => axis.0.neg-lim-sw-in

net      y.enable   axis.1.amp-enable-out
net      y.pos-cmd  axis.1.motor-pos-cmd
net      y.pos-fb   axis.1.motor-pos-fb
net      y.min-home => axis.1.home-sw-in
net      y.min-home => axis.1.neg-lim-sw-in

net      z.enable   axis.2.amp-enable-out
net      z.pos-cmd  axis.2.motor-pos-cmd
net      z.pos-fb   axis.2.motor-pos-fb
net      z.max-home => axis.2.home-sw-in
net      z.max-home => axis.2.pos-lim-sw-in


net      spindle.on      <= motion.spindle-on
net      spindle.reverse <= motion.spindle-reverse
net loop.spindle.cmd     <= motion.spindle-speed-out
net loop.spindle.cmd     <= motion.spindle-speed-in

#net spindle.at-speed    => motion.spindle-at-speed
#sets spindle.at-speed true

net      probe.in            => motion.probe-input

net loop.estop.out <= iocontrol.0.user-enable-out
net loop.estop.out => iocontrol.0.emc-enable-in

net      tool.change           <= iocontrol.0.tool-change
net      tool.changed          => iocontrol.0.tool-changed
net      tool.number           <= iocontrol.0.tool-prep-number
net loop.tool-prepare <= iocontrol.0.tool-prepare 
net loop.tool-prepare => iocontrol.0.tool-prepared
