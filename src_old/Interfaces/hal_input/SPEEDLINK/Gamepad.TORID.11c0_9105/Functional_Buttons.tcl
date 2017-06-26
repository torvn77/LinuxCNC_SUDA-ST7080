#-----------Альясы(линки) с пинов input.N.btn- на номер кнопок.
#             Вообще такое впечатление,что компонент input не правильно сопостовляет кнопки джойстика и их название.
#             Лучше бы он их просто нумеровал



net gamepad.func_button_1 <= input.0.btn-x
net gamepad.func_button_2 <= input.0.btn-c
net gamepad.func_button_3 <= input.0.btn-b
net gamepad.func_button_4 <= input.0.btn-a
net gamepad.func_button_5 <= input.0.btn-y
#net gamepad.func_button_6 <= input.0.btn-z
net gamepad.func_button_7 <= input.0.btn-tl
#net gamepad.func_button_8 <= input.0.btn-tr
net gamepad.func_button_9 <= input.0.btn-tl2
net gamepad.func_button_10 <= input.0.btn-tr2
net gamepad.func_button_11 <= input.0.btn-select
net gamepad.func_button_12 <= input.0.btn-start


#---------------------------------------------------

#----------------Логика блокировки и переключения analog/continue режима кнопок
# Задание клавиш выбора через подключение к соответствующему сигналу
net gamepad.analog_jog-enable   <= input.0.btn-z
net gamepad.continue_jog-enable <= input.0.btn-tr


net gamepad.analog_jog-enable       => not.0.in
net gamepad.analog_jog-enable-not   <= not.0.out
net gamepad.continue_jog-enable     => not.1.in
net gamepad.continue_jog-enable-not <= not.1.out

# Если не нажата ни одна клавиша выбора или нажаты обе клавиши,то выполняется блокировка кнопок
# Если нажата только одна из клавиша выбора то выбирается соответствующий режим 
net gamepad.analog_jog-enable        => and2.0.in0
net gamepad.continue_jog-enable-not  => and2.0.in1
net gamepad.sel_button_mode_analog   <= and2.0.out
net gamepad.continue_jog-enable      => and2.25.in0
net gamepad.analog_jog-enable-not    => and2.25.in1
net gamepad.sel_button_mode_continue <= and2.25.out

#----------------Button 1-------
net gamepad.func_button_1 => and2.1.in0
net gamepad.sel_button_mode_analog => and2.1.in1
net gamepad.func_button_1-analog-mode <= and2.1.out

net gamepad.func_button_1 => and2.2.in0
net gamepad.sel_button_mode_continue => and2.2.in1
net gamepad.func_button_1-continue_mode <= and2.2.out

#----------------Button 2-------
net gamepad.func_button_2 => and2.3.in0
net gamepad.sel_button_mode_analog => and2.3.in1
net gamepad.func_button_2-analog-mode <= and2.3.out

net gamepad.func_button_2 => and2.4.in0
net gamepad.sel_button_mode_continue => and2.4.in1
net gamepad.func_button_2-continue_mode <= and2.4.out

#----------------Button 3-------
net gamepad.func_button_3 => and2.5.in0
net gamepad.sel_button_mode_analog => and2.5.in1
net gamepad.func_button_3-analog-mode <= and2.5.out

net gamepad.func_button_3 => and2.6.in0
net gamepad.sel_button_mode_continue => and2.6.in1
net gamepad.func_button_3-continue_mode <= and2.6.out

#----------------Button 4-------
net gamepad.func_button_4 => and2.7.in0
net gamepad.sel_button_mode_analog => and2.7.in1
net gamepad.func_button_4-analog-mode <= and2.7.out

net gamepad.func_button_4 => and2.8.in0
net gamepad.sel_button_mode_continue => and2.8.in1
net gamepad.func_button_4-continue_mode <= and2.8.out

#----------------Button 5-------
net gamepad.func_button_5 => and2.9.in0
net gamepad.sel_button_mode_analog => and2.9.in1
net gamepad.func_button_5-analog-mode <= and2.9.out

net gamepad.func_button_5 => and2.10.in0
net gamepad.sel_button_mode_continue => and2.10.in1
net gamepad.func_button_5-continue_mode <= and2.10.out

#----------------Button 6-------
net gamepad.func_button_6 => and2.11.in0
net gamepad.sel_button_mode_analog => and2.11.in1
net gamepad.func_button_6-analog-mode <= and2.11.out

net gamepad.func_button_6 => and2.12.in0
net gamepad.sel_button_mode_continue => and2.12.in1
net gamepad.func_button_6-continue_mode <= and2.12.out

#----------------Button 7-------
net gamepad.func_button_7 => and2.13.in0
net gamepad.sel_button_mode_analog => and2.13.in1
net gamepad.func_button_7-analog-mode <= and2.13.out

net gamepad.func_button_7 => and2.14.in0
net gamepad.sel_button_mode_continue => and2.14.in1
net gamepad.func_button_7-continue_mode <= and2.14.out

#----------------Button 8-------
net gamepad.func_button_8 => and2.15.in0
net gamepad.sel_button_mode_analog => and2.15.in1
net gamepad.func_button_8-analog-mode <= and2.15.out

net gamepad.func_button_8 => and2.16.in0
net gamepad.sel_button_mode_continue => and2.16.in1
net gamepad.func_button_8-continue_mode <= and2.16.out

#----------------Button 9-------
net gamepad.func_button_9 => and2.17.in0
net gamepad.sel_button_mode_analog => and2.17.in1
net gamepad.func_button_9-analog-mode <= and2.17.out

net gamepad.func_button_9 => and2.18.in0
net gamepad.sel_button_mode_continue => and2.18.in1
net gamepad.func_button_9-continue_mode <= and2.18.out

#----------------Button 10-------
net gamepad.func_button_10 => and2.19.in0
net gamepad.sel_button_mode_analog => and2.19.in1
net gamepad.func_button_10-analog-mode <= and2.19.out

net gamepad.func_button_10 => and2.20.in0
net gamepad.sel_button_mode_continue => and2.20.in1
net gamepad.func_button_10-continue_mode <= and2.20.out

#----------------Button 11-------
net gamepad.func_button_11 => and2.21.in0
net gamepad.sel_button_mode_analog => and2.21.in1
net gamepad.func_button_11-analog-mode <= and2.21.out

net gamepad.func_button_11 => and2.22.in0
net gamepad.sel_button_mode_continue => and2.22.in1
net gamepad.func_button_11-continue_mode <= and2.22.out

#----------------Button 12-------
net gamepad.func_button_12 => and2.23.in0
net gamepad.sel_button_mode_analog => and2.23.in1
net gamepad.func_button_12-analog-mode <= and2.23.out

net gamepad.func_button_12 => and2.24.in0
net gamepad.sel_button_mode_continue => and2.24.in1
net gamepad.func_button_12-continue_mode <= and2.24.out
#----------------
