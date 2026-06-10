v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 -60 -40 40 {lab=Vout1}
N 220 -60 220 40 {lab=#net1}
N 0 -90 180 -90 {lab=Vout1}
N 0 70 180 70 {lab=Vout2}
N -40 100 -40 130 {lab=Vout2}
N -40 190 -40 210 {lab=GND}
N -40 -30 30 -30 {lab=Vout1}
N 30 -90 30 -30 {lab=Vout1}
N -40 110 40 110 {lab=Vout2}
N 40 70 40 110 {lab=Vout2}
N 220 -150 220 -120 {lab=#net2}
N 350 -210 350 -40 {lab=#net3}
N 220 100 220 120 {lab=#net4}
N 350 20 350 120 {lab=GND}
N -40 200 270 200 {lab=GND}
N -40 -210 -40 -120 {lab=#net3}
N -60 -90 -40 -90 {lab=#net3}
N -60 -140 -60 -90 {lab=#net3}
N -60 -140 -40 -140 {lab=#net3}
N -50 70 -40 70 {lab=Vout1}
N -50 20 -50 70 {lab=Vout1}
N -50 20 -40 20 {lab=Vout1}
N 220 70 240 70 {lab=#net1}
N 240 10 240 70 {lab=#net1}
N 220 10 240 10 {lab=#net1}
N 220 -90 240 -90 {lab=#net2}
N 240 -140 240 -90 {lab=#net2}
N 220 -140 240 -140 {lab=#net2}
N -40 -240 -40 -210 {lab=#net3}
N -40 -240 350 -240 {lab=#net3}
N 350 -240 350 -210 {lab=#net3}
N 290 -230 290 -210 {lab=#net3}
N 290 -240 290 -230 {lab=#net3}
N 220 -240 220 -210 {lab=#net3}
N 290 -150 290 120 {lab=#net4}
N 220 120 290 120 {lab=#net4}
N 270 200 350 200 {lab=GND}
N 350 120 350 200 {lab=GND}
C {devices/code.sym} -290 -140 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 200 -90 0 0 {name=M10
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 200 70 0 0 {name=M1
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -90 0 1 {name=M2
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 70 0 1 {name=M3
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -40 160 0 0 {name=I0 value=100u}
C {gnd.sym} -40 210 0 0 {name=l1 lab=GND}
C {vsource.sym} 350 -10 0 0 {name=V3 value=1.8 savecurrent=false}
C {vsource.sym} 220 -180 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 290 -180 0 0 {name=V2 value=0.3 savecurrent=false}
C {opin.sym} 30 -30 0 0 {name=p1 lab=Vout1}
C {opin.sym} 40 110 0 0 {name=p2 lab=Vout2}
C {simulator_commands_shown.sym} 440 -190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.dc V2 0 1.8 0.01
.control
run

plot v(Vout1) v(Vout2)
plot i(V1)

.endc
.end
"}
