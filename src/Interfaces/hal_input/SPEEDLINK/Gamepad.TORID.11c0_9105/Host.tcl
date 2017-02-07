# Name and Patch this file "Interfaces/hal_input/SPEEDLINK/Gamepad.TORID.11c0_9105/Host.tcl"

#loadusr -W hal_input -KA "SPEEDLINK TORID"
#Version=0111 Bus=0003
hal loadusr -W hal_input -KA Vendor=11c0 Product=9105

loadrt joyhandle count=4
addf joyhandle.0 servo-thread
addf joyhandle.1 servo-thread
addf joyhandle.2 servo-thread
addf joyhandle.3 servo-thread

loadrt not count=2
addf not.0 servo-thread
addf not.1 servo-thread

loadrt mux4 count=1
addf mux4.0 servo-thread

loadrt and2 count=26
addf and2.0 servo-thread
addf and2.1 servo-thread
addf and2.2 servo-thread
addf and2.3 servo-thread
addf and2.4 servo-thread
addf and2.5 servo-thread
addf and2.6 servo-thread
addf and2.7 servo-thread
addf and2.8 servo-thread
addf and2.9 servo-thread
addf and2.10 servo-thread
addf and2.11 servo-thread
addf and2.12 servo-thread
addf and2.13 servo-thread
addf and2.14 servo-thread
addf and2.15 servo-thread
addf and2.16 servo-thread
addf and2.17 servo-thread
addf and2.18 servo-thread
addf and2.19 servo-thread
addf and2.20 servo-thread
addf and2.21 servo-thread
addf and2.22 servo-thread
addf and2.23 servo-thread
addf and2.24 servo-thread
addf and2.25 servo-thread

#---------------------------
net gamepad.analog_jog-enable   => mux4.0.sel0
net gamepad.continue_jog-enable => mux4.0.sel1
# Скорость если кнопки вывода режима не нажаты,равна нулю для блокировки случайного перемещения перемещения
# на тот случай если джойстик или на джойстик что-то упало(0.0). 
setp mux4.0.in0 0.0
# Скорость в режиме аналогового управления
setp mux4.0.in1 6.0
# Скорость в режиме продолжительного прыжка/движения с постоянной скоростью
setp mux4.0.in2 70.0
# $::TRAJ(MAX_VELOCITY)
# С чего бы это быть обоим кнопкам нажатыми,случаем джойстик у вас не упал и вы на него ничего не положили?
# В общем заблокировать (0.0)
setp mux4.0.in3 0.0
net gamepad.jog-speed <= mux4.0.out
#---------------------------

#-------Подключение модулей
# Интерфейс с halом машины

source [lindex $::GAMEPAD(CONFIG_PATCH)]/Halui.tcl
#Модуль функциональных клавиш
source [lindex $::GAMEPAD(CONFIG_PATCH)]/Functional_Buttons.tcl
#Модуль дискреных кнопок перемещения
source [lindex $::GAMEPAD(CONFIG_PATCH)]/Gamepad_digital_axis.tcl
#Модуль аналогово джойстика
source [lindex $::GAMEPAD(CONFIG_PATCH)]/Gamepad_analog_axis.tcl

#------------Отладка---------
#loadusr halshow
#loadusr halshow HALshow/Joystick.halshow
