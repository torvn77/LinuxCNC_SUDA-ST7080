# Name and Patch this file "Interface/Gamepad-devl/Gamepad_analog_axis.hal"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Не изменять эту секцию без прямой необходимости,настройку осей следует делать через параметры joyhandle
# Впрочем,акромя "порядка" причин не менять настроек джойстика нету.
net Pad_analog_X-Axis_position <= input.0.abs-x-position
setp input.0.abs-x-offset  127.5
setp input.0.abs-x-scale   127.5
#setp input.0.abs-x-flat    1
#setp input.0.abs-x-fuzz    0
net Pad_analog_Y-Axis_position <= input.0.abs-y-position
setp input.0.abs-y-offset  127.5
setp input.0.abs-y-scale   127.5
#setp input.0.abs-y-flat    1
#setp input.0.abs-y-fuzz    0
net Pad_analog_Z-Axis_position <= input.0.abs-z-position
setp input.0.abs-z-offset  127.5
setp input.0.abs-z-scale   127.5
#setp input.0.abs-z-flat    1
#setp input.0.abs-z-fuzz    0
net Pad_analog_RZ-Axis_position <= input.0.abs-rz-position
setp input.0.abs-rz-offset  127.5
setp input.0.abs-rz-scale   127.5
#setp input.0.abs-rz-flat    1
#setp input.0.abs-rz-fuzz    0

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~


net Pad_analog_X-Axis_position => joyhandle.0.in
setp joyhandle.0.deadband 0.01
#Включение параметра joyhandle.N.inverse приводит к всплеску скорости на отрицательных малых значениях,в общем баг
setp joyhandle.0.inverse 0
setp joyhandle.0.offset 0
setp joyhandle.0.power 4
setp joyhandle.0.scale 60.0
net  gamepad_analog_jog_vel-0 <= joyhandle.0.out

net Pad_analog_Y-Axis_position => joyhandle.1.in
setp joyhandle.1.deadband 0.01
#Включение параметра joyhandle.N.inverse приводит к всплеску скорости на отрицательных малых значениях,в общем баг
setp joyhandle.1.inverse 0
setp joyhandle.1.offset 0
setp joyhandle.1.power 4
# Ось Y инвертирована (scale=-1.0)
setp joyhandle.1.scale -60.0
net  gamepad_analog_jog_vel-1 <= joyhandle.1.out

net Pad_analog_Z-Axis_position => joyhandle.2.in
setp joyhandle.2.deadband 0.01
#Включение параметра joyhandle.N.inverse приводит к всплеску скорости на отрицательных малых значениях,в общем баг
setp joyhandle.2.inverse 0
setp joyhandle.2.offset 0
setp joyhandle.2.power 4
setp joyhandle.2.scale 60.0
net  gamepad_analog_jog_vel-2 <= joyhandle.2.out

net Pad_analog_RZ-Axis_position => joyhandle.3.in
setp joyhandle.3.deadband 0.01
#Включение параметра joyhandle.N.inverse приводит к всплеску скорости на отрицательных малых значениях,в общем баг
setp joyhandle.3.inverse 0
setp joyhandle.3.offset 0
setp joyhandle.3.power 4
# Ось RZ инвертирована (scale=-1.0)
setp joyhandle.3.scale -60.0
net  gamepad_analog_jog_vel-3 <= joyhandle.3.out
