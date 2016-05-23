net panel.1.axis-x.change_g54_offset-0.0    <= pyvcp.axis-x.change_g54_offset-0.0.out
net panel.1.axis-y.change_g54_offset-0.0    <= pyvcp.axis-y.change_g54_offset-0.0.out
net panel.1.axis-z.change_g54_offset-0.0    <= pyvcp.axis-z.change_g54_offset-0.0.out
net panel.1.axis-z.change_g54_offset-0.0.v2 <= pyvcp.axis-z.change_g54_offset-0.0.v2.out
net panel.1.axis-z.change_g54_offset-1.4    <= pyvcp.axis-z.change_g54_offset-1.4.out
net panel.1.axis-z.change_g54_offset-2.0    <= pyvcp.axis-z.change_g54_offset-2.0.out
net panel.1.axis-z.change_g54_offset-4.0    <= pyvcp.axis-z.change_g54_offset-4.0.out
net panel.1.axis-xyz.zeroed_g54_offset      <= pyvcp.axis-xyz.zeroed_g54_offset.out

net panel.1.toolsensor.move                 <= pyvcp.toolsensor.move.out
net panel.1.axis-xy.move_g54_rel_null       <= pyvcp.axis-xy.move_g54_rel_null.out
net panel.1.machine.parking.move            <= pyvcp.machine.parking.move.out
net panel.1.measumerent_material_height     <= pyvcp.measumerent_material_height.out
net panel.1.init_tool_lenght                <= pyvcp.init_tool_lenght.out
net panel.1.measumerent_tool_lenght         <= pyvcp.measumerent_tool_lenght.out

net gpio_raw.probe-in => pyvcp.probe-sensor-led.in
net lcnc.02_pos-fb    => pyvcp.z-coord.in
net lcnc.motion.current-vel                      => pyvcp.move-speed.in


net panel.1.probe_sensor_select.disabled    <= pyvcp.probe_sensor_select.disabled
net panel.1.probe_sensor_select.height      <= pyvcp.probe_sensor_select.height
net panel.1.probe_sensor_select.toolseter   <= pyvcp.probe_sensor_select.toolseter

net panel.1.probe_sensor_voltage.auto       <= pyvcp.probe_sensor_voltage.auto
net panel.1.probe_sensor_voltage.disabled   <= pyvcp.probe_sensor_voltage.disabled
net panel.1.probe_sensor_voltage.hight      <= pyvcp.probe_sensor_voltage.hight
net panel.1.probe_sensor_voltage.low        <= pyvcp.probe_sensor_voltage.low
net panel.1.probe_sensor_voltage.midle      <= pyvcp.probe_sensor_voltage.midle

