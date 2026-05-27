Title : R-C circuit charcateristics

.TEMP 27

*ele   n1     n2      value
 R1    Vin    Vout    1k
 C1    Vout   0       1p


*Vpulse  n1    n2     PULSE  v1 v2  td  tr   pf    pw   per
 Vpulse  Vin   0      pulse  0  5   0   0.1n  0.1n  10n   20n

*TRAN   Step-Size    Sim-Time
.TRAN    1p            40n

*RISE TIME
.measure tran trise TRIG v(Vout) VAL = 0.5 RISE = 1 TARG v(Vout) VAL = 4.5 RISE = 1

*FALL TIME
.measure tran tfall TRIG v(Vout) VAL = 4.5 FALL = 1 TARG v(Vout) VAL = 0.5 FALL = 1

*AVERAGE OUTPUT VOLTAGE
.measure tran vavg AVG v(Vout) FROM = 20n TO = 40n


.Control
RUN
PLOT v(Vin) v(Vout)
.endc

.end
