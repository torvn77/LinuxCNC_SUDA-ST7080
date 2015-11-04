#*******************
#  AXIS X
#*******************

net x-enable  <= axis.0.amp-enable-out
net x-pos-cmd <= axis.0.motor-pos-cmd
net x-pos-fb  => axis.0.motor-pos-fb
net x-index-enable <=> axis.0.index-enable

#  ---home signals---
#net x-home-sw => axis.0.home-sw-in
net min-home-x => axis.0.home-sw-in

# ---limit switch signals---
#net x-neg-limit => axis.0.neg-lim-sw-in
net min-home-x => axis.0.neg-lim-sw-in
#net x-pos-limit => axis.0.pos-lim-sw-in
