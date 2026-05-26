Title : R-C circuit charcateristics

.TEMP 27

*ele   n1     n2      value
 R1    Vin    Vout    10k
 C1    Vout   0       10p

*Vpulse  n1    n2     PULSE  v1 v2  td    tr   tf   pw     per
 Vpulse  Vin   0      pulse  0  5   0  10n  10n  0.5u   1u

*TRAN   Step-Size    Sim-Time
.TRAN    0.1u            3u


.Control
RUN
PLOT v(Vin) v(Vout)
.endc

.end
