loadrt trivkins
loadrt [EMCMOT]EMCMOT servo_period_nsec=[EMCMOT]SERVO_PERIOD traj_period_nsec=[EMCMOT]TRAJ_PERIOD base_period_nsec=[EMCMOT]BASE_PERIOD num_joints=[TRAJ]AXES num_dio=[EMCMOT]NUM_DIO num_aio=[EMCMOT]NUM_AIO

addf motion-command-handler servo-thread
addf motion-controller servo-thread



#******************************
# connect miscellaneous signals
#******************************

source LinuxCNC/linuxcnc.tcl
source LinuxCNC/axis-0.tcl
source LinuxCNC/axis-1.tcl
source LinuxCNC/axis-2.tcl
source LinuxCNC/axis-3.tcl
source LinuxCNC/axis-4.tcl

unlinkp iocontrol.0.user-enable-out
unlinkp iocontrol.0.emc-enable-in
net linuxcnc.estop-loop iocontrol.0.user-enable-out =>  iocontrol.0.emc-enable-in

source MDI_Commands/mdi_commands.tcl
source Interface/Gamepad-devl/Head.tcl
source Devices/ToolChange/manual_toolchange.tcl
source Devices/Mesa/mesa.tcl
source Devices/Mesa/7i76.0/7i76.tcl
