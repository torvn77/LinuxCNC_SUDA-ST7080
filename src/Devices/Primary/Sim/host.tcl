#
loadrt stepgen step_type=0,0,0
addf stepgen.make-pulses base-thread
addf stepgen.update-freq servo-thread
addf stepgen.capture-position servo-thread


#loadrt sim_parport names=parport.0
#setp parport.0.reset-time 8000
#addf parport.0.read base-thread
#addf parport.0.write base-thread
#addf parport.0.reset base-thread

#net stepgen.xstep           => parport.0.pin-01-out
#setp parport.0.pin-01-out-reset 1
#net stepgen.zstep           => parport.0.pin-02-out
#setp parport.0.pin-02-out-reset 1
#net stepgen.zdir            => parport.0.pin-03-out
#net stepgen.xdir            => parport.0.pin-14-out
