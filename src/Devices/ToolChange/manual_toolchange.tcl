
#  ---manual tool change signals---

loadusr -W hal_manualtoolchange
net tool-change-request     iocontrol.0.tool-change       =>  hal_manualtoolchange.change
net tool-change-confirmed   iocontrol.0.tool-changed      <=  hal_manualtoolchange.changed
net tool-number             iocontrol.0.tool-prep-number  =>  hal_manualtoolchange.number
net tool-prepare-loopback   iocontrol.0.tool-prepare      =>  iocontrol.0.tool-prepared
