#
loadusr -W hal_manualtoolchange
net lcnc.tool_change => hal_manualtoolchange.change
net lcnc.tool_changed <= hal_manualtoolchange.changed
net lcnc.tool_number => hal_manualtoolchange.number

unlinkp iocontrol.0.tool-prepare
unlinkp iocontrol.0.tool-prepared
net loopback.lcnc.tool_prepare <= iocontrol.0.tool-prepare => iocontrol.0.tool-prepared