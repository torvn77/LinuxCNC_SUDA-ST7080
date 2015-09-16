#*******************
# SPINDLE S
#*******************

# ---PWM Generator signals/setup---

setp hm2_5i25.0.7i77.0.1.analogout5-scalemax [SPINDLE_9]OUTPUT_SCALE
setp hm2_5i25.0.7i77.0.1.analogout5-minlim   [SPINDLE_9]OUTPUT_MIN_LIMIT
setp hm2_5i25.0.7i77.0.1.analogout5-maxlim   [SPINDLE_9]OUTPUT_MAX_LIMIT

net hm2_5i25.0.7i77.0.1.analogout5 <= spindle-vel-cmd
net hm2_5i25.0.7i77.0.1.spinena    <= machine-is-enabled

loadrt and2 names=spindle_ena_1

# Входы
net spindle-on <= motion.spindle-on
net spindle-clean-air <= motion.digital-out-01
net open-collet <= motion.digital-out-02

# Слияние сигналов в один
net spindle-on => spindle_ena_1.in0
net spindle-clean-air => spindle_ena_1.in1
net spindle-clean-air-cmd <= spindle_ena_1.out

# Включение шпинделя
net spindle-on => hm2_5i25.0.7i77.0.0.output-01

# Включение очистки
net spindle-clean-air-cmd => hm2_5i25.0.7i77.0.0.output-02
# Расжим цанги
#net open-collet => hm2_5i25.0.7i77.0.0.output-02
