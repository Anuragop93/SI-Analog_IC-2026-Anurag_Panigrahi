v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -20 -170 -20 {lab=Vin}
N -220 -20 -220 -0 {lab=Vin}
N 130 -0 150 -0 {lab=GND}
N 150 -0 150 70 {lab=GND}
N -220 70 150 70 {lab=GND}
N -220 60 -220 70 {lab=GND}
N 130 -20 160 -20 {lab=vout}
C {vsource.sym} -220 30 0 0 {name=Vpulse value="0 PULSE(0 5 0 10n 10n 0.5u 1u)" savecurrent=false}
C {lab_pin.sym} -190 -20 1 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} 70 70 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} 280 90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.TRAN 0.1u 3u

.Control
RUN
PLOT v(Vin) v(Vout)
.endc

.end
* ngspice commands
"}
C {opin.sym} 160 -20 0 0 {name=p1 lab=vout}
C {rc_char.sym} -20 -10 0 0 {name=x1}
