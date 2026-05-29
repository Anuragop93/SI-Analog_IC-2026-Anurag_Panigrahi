v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -80 -60 {}
N -150 -60 -150 -30 {lab=vin}
N -150 -60 -100 -60 {lab=vin}
N -40 -60 10 -60 {lab=vin1}
N 70 -60 130 -60 {lab=vin2}
N -150 -380 -150 -310 {lab=vbat}
N -150 -380 -60 -380 {lab=vbat}
N -60 -380 -60 -370 {lab=vbat}
N -60 -280 -60 -270 {lab=vref}
N -60 -190 -60 -170 {lab=GND}
N -150 -250 -150 -190 {lab=GND}
N -150 -190 -60 -190 {lab=GND}
N -60 -210 -60 -190 {lab=GND}
N 0 -280 0 -270 {lab=vref}
N -60 -280 0 -280 {lab=vref}
N -60 -310 -60 -280 {lab=vref}
N 0 -210 0 -190 {lab=GND}
N -60 -190 0 -190 {lab=GND}
N 0 -280 30 -280 {lab=vref}
N 230 -250 230 -60 {lab=#net1}
N 330 -250 330 -130 {lab=vout}
N 190 -60 230 -60 {lab=#net1}
N 330 -130 450 -130 {lab=vout}
N 450 -130 450 -110 {lab=vout}
N 300 -130 330 -130 {lab=vout}
N -150 30 -150 50 {lab=GND}
N 450 -50 450 -30 {lab=GND}
N 30 -280 30 -100 {lab=vref}
N 230 -330 250 -330 {lab=#net1}
N 310 -330 330 -330 {lab=vout}
N 230 -250 250 -250 {lab=#net1}
N 230 -330 230 -250 {lab=#net1}
N 310 -250 330 -250 {lab=vout}
N 330 -330 330 -250 {lab=vout}
N 300 -50 300 -20 {lab=GND}
N 300 -130 300 -110 {lab=vout}
N 230 -60 260 -60 {lab=#net1}
N 30 -100 260 -100 {lab=vref}
C {vsource.sym} -150 0 0 0 {name=V1 value= "0 AC = 1" savecurrent=false}
C {capa.sym} 40 -60 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -70 -60 1 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} 160 -60 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -60 -240 2 0 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -60 -340 2 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 0 -240 2 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 450 -80 2 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -150 -280 0 0 {name=V2 value=2.5 savecurrent=false}
C {gnd.sym} 300 -20 0 0 {name=l1 lab=GND}
C {gnd.sym} -60 -170 0 0 {name=l2 lab=GND}
C {gnd.sym} -150 50 0 0 {name=l3 lab=GND}
C {gnd.sym} 450 -30 0 0 {name=l4 lab=GND}
C {res.sym} 280 -250 1 0 {name=R5
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 280 -330 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 300 -80 0 0 {name=E1 value=10e5}
C {simulator_commands_shown.sym} 540 -180 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param temp = 27
.control
save all
op
ac dec 100 1 100meg
let voutdb = vdb(vout)
let voutabs = abs(vout)

meas ac vout_1k find voutabs at = 1k
meas ac voutdb_1k find voutdb at = 1k

let voutm3db = voutdb_1k - 3.0
meas ac fp3db WHEN voutdb = voutm3db fall = last
meas ac fz3db WHEN voutdb = voutm3db rise = 1

write
PLOT v(vin) v(vout)

.endc
"}
C {lab_pin.sym} -120 -60 1 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} -10 -60 1 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_pin.sym} 100 -60 3 0 {name=p3 sig_type=std_logic lab=vin2}
C {lab_pin.sym} 190 -100 1 0 {name=p4 sig_type=std_logic lab=vref}
C {lab_pin.sym} -120 -380 1 0 {name=p5 sig_type=std_logic lab=vbat}
C {lab_pin.sym} 400 -130 1 0 {name=p6 sig_type=std_logic lab=vout}
