#*******************
#  AXIS Y
#*******************

net y-enable  <= axis.1.amp-enable-out
net y-pos-cmd <= axis.1.motor-pos-cmd 
net y-pos-fb  => axis.1.motor-pos-fb  

#  ---home signals---
#net y-home-sw => axis.1.home-sw-in
net min-home-y => axis.1.home-sw-in
# ---limit switch signals---
#net y-neg-limit => axis.1.neg-lim-sw-in
net min-home-y  => axis.1.neg-lim-sw-in
net y-pos-limit => axis.1.pos-lim-sw-in
