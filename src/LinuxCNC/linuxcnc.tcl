loadrt trivkins
loadrt [EMCMOT]EMCMOT servo_period_nsec=[EMCMOT]SERVO_PERIOD traj_period_nsec=[EMCMOT]TRAJ_PERIOD base_period_nsec=[EMCMOT]BASE_PERIOD num_joints=[TRAJ]AXES num_dio=[EMCMOT]NUM_DIO num_aio=[EMCMOT]NUM_AIO

addf motion-command-handler servo-thread
addf motion-controller servo-thread

source LinuxCNC/motion.tcl
#source LinuxCNC/halui.tcl
source LinuxCNC/io.tcl
