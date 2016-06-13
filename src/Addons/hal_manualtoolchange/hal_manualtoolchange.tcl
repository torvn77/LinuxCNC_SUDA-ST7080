#
loadusr -W hal_manualtoolchange
net lcnc.tool.change => hal_manualtoolchange.change
net lcnc.tool.changed <= hal_manualtoolchange.changed
net lcnc.tool.prep-number => hal_manualtoolchange.number

unlinkp iocontrol.0.tool-prepare
unlinkp iocontrol.0.tool-prepared
net loopback.lcnc.tool_prepare <= iocontrol.0.tool-prepare => iocontrol.0.tool-prepared
