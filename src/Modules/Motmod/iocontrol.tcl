#
#net lcnc.estop_out             <= iocontrol.0.user-enable-out
#net lcnc.estop_in              => iocontrol.0.emc-enable-in

net lcnc.tool.prepare          <= iocontrol.0.tool-prepare
net lcnc.tool.prepared         => iocontrol.0.tool-prepared
net lcnc.tool.change           <= iocontrol.0.tool-change
net lcnc.tool.changed          => iocontrol.0.tool-changed
net lcnc.tool.current-number   <= iocontrol.0.tool-number
net lcnc.tool.prep-number      <= iocontrol.0.tool-prep-number
net lcnc.tool.prep-pocket      <= iocontrol.0.tool-prep-pocket
