v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -90 -30 90 -30 {lab=Vcm1}
N -130 0 -130 20 {lab=#net1}
N 130 0 130 20 {lab=#net2}
N -130 80 -130 130 {lab=Vcm1}
N 130 80 130 130 {lab=Vcm4}
N -130 190 -130 240 {lab=Vcm3}
N -130 240 130 240 {lab=Vcm3}
N 130 190 130 240 {lab=Vcm3}
N -0 240 -0 270 {lab=Vcm3}
N -170 400 -40 400 {lab=Vcm2}
N -230 400 -170 400 {lab=Vcm2}
N -270 280 -270 370 {lab=Vcm2}
N -270 -80 -270 220 {lab=#net3}
N -270 -80 280 -80 {lab=#net3}
N -130 -80 -130 -60 {lab=#net3}
N 130 -80 130 -60 {lab=#net3}
N -140 -30 -130 -30 {lab=#net3}
N -140 -80 -140 -30 {lab=#net3}
N 130 -30 140 -30 {lab=#net3}
N 140 -80 140 -30 {lab=#net3}
N -50 -30 -50 90 {lab=Vcm1}
N -270 330 -170 330 {lab=Vcm2}
N -170 330 -170 400 {lab=Vcm2}
N 450 -80 450 150 {lab=#net3}
N 280 -80 450 -80 {lab=#net3}
N -270 430 -270 480 {lab=GND}
N -270 480 450 480 {lab=GND}
N 450 210 450 480 {lab=GND}
N 0 430 0 480 {lab=GND}
N -290 400 -270 400 {lab=GND}
N -290 400 -290 480 {lab=GND}
N -290 480 -270 480 {lab=GND}
N -0 400 20 400 {lab=GND}
N 20 400 20 470 {lab=GND}
N 20 470 20 480 {lab=GND}
N 300 -80 300 -0 {lab=#net3}
N 300 30 330 30 {lab=#net3}
N 330 -80 330 30 {lab=#net3}
N 300 410 300 480 {lab=GND}
N 300 380 310 380 {lab=GND}
N 310 380 310 480 {lab=GND}
N 370 160 370 210 {lab=Vout}
N 300 160 370 160 {lab=Vout}
N 240 90 300 90 {lab=Vout}
N 130 90 180 90 {lab=Vcm4}
N 170 30 170 90 {lab=Vcm4}
N 170 30 260 30 {lab=Vcm4}
N 370 270 370 480 {lab=GND}
N -0 350 -0 370 {lab=#net4}
N -0 270 0 290 {lab=Vcm3}
N -130 110 -50 110 {lab=Vcm1}
N -50 90 -50 110 {lab=Vcm1}
N 300 160 300 220 {lab=Vout}
N 300 90 300 160 {lab=Vout}
N 300 60 300 90 {lab=Vout}
N 300 280 300 350 {lab=#net5}
N 260 380 260 450 {lab=Vcm2}
N -90 450 260 450 {lab=Vcm2}
N -90 400 -90 450 {lab=Vcm2}
N 80 480 80 510 {lab=GND}
N -120 160 130 160 {lab=GND}
N -130 160 -120 160 {lab=GND}
N -200 160 -170 160 {lab=Vin1}
N 170 160 190 160 {lab=Vin2}
N -200 220 190 220 {lab=GND}
N 0 210 0 220 {lab=GND}
N 30 160 30 220 {lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -110 -30 0 1 {name=M10
L=2
W=5
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -150 160 0 0 {name=M2
L=2
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 110 -30 0 0 {name=M1
L=2
W=5
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -130 50 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 130 50 0 0 {name=V2 value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 150 160 0 1 {name=M3
L=2
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} 0 320 0 0 {name=V3 value=0 savecurrent=false}
C {vsource.sym} 190 190 0 0 {name=Vin value="1.2 AC = -0.5" savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} -250 400 0 1 {name=M4
L=2
W=5
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 400 0 0 {name=M5
L=2
W=5 
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {isource.sym} -270 250 0 0 {name=I0 value=50u}
C {vsource.sym} 450 180 0 0 {name=Vsup value=1.8 savecurrent=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 280 30 0 0 {name=M6
L=2
W=5
nf=1 mult=64
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 280 380 0 0 {name=M7
L=2
W=5  
nf=1 mult=16
model=nfet_01v8
spiceprefix=X
}
C {capa.sym} 210 90 3 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 370 240 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/code.sym} -420 -70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {lab_pin.sym} -170 350 2 0 {name=p1 sig_type=std_logic lab=Vcm2}
C {lab_pin.sym} 0 270 2 0 {name=p2 sig_type=std_logic lab=Vcm3}
C {lab_pin.sym} -130 90 0 0 {name=p3 sig_type=std_logic lab=Vcm1}
C {vsource.sym} 300 250 0 0 {name=V4 value=0 savecurrent=false}
C {simulator_commands_shown.sym} 520 -20 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.ac dec 10 1 10G
.control
run

let gain = db(v(Vout))
let phase = ph(v(Vout))*(180/pi)

plot gain
plot phase

plot v(Vout)
plot db(v(Vout))

.endc
.end
"}
C {lab_pin.sym} 360 160 1 0 {name=p4 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 230 30 1 0 {name=p5 sig_type=std_logic lab=Vcm4}
C {gnd.sym} 80 510 0 0 {name=l2 lab=GND}
C {gnd.sym} 0 210 2 0 {name=l3 lab=GND}
C {vsource.sym} -200 190 0 0 {name=Vin1 value="1.2 AC = 0.5" savecurrent=false}
C {lab_pin.sym} -180 160 1 0 {name=p6 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 180 160 1 0 {name=p7 sig_type=std_logic lab=Vin2}
