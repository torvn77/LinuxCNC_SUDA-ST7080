#
loadrt $::EMCMOT(KINEMATICS)
loadrt $::EMCMOT(EMCMOT) servo_period_nsec=$::EMCMOT(SERVO_PERIOD) num_joints=$::TRAJ(AXES) num_dio=$::EMCMOT(NUM_DIO) num_aio=$::EMCMOT(NUM_AIO)
addf motion-command-handler servo-thread
addf motion-controller servo-thread

