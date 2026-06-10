v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 30 -100 70 {lab=Vout}
N -100 130 -100 170 {lab=GND}
N -100 -180 -100 -30 {lab=#net1}
N 70 -180 70 -120 {lab=#net1}
N 70 -60 70 -30 {lab=#net2}
N -110 -0 -100 -0 {lab=#net1}
N -110 -70 -110 -0 {lab=#net1}
N -110 -70 -100 -70 {lab=#net1}
N 70 -50 80 -50 {lab=#net2}
N 80 -50 80 0 {lab=#net2}
N 70 0 80 0 {lab=#net2}
N 70 30 70 70 {lab=#net3}
N 190 -180 190 -30 {lab=#net1}
N 70 -180 190 -180 {lab=#net1}
N -100 -180 70 -180 {lab=#net1}
N -60 0 30 -0 {lab=Vout}
N -100 50 -20 50 {lab=Vout}
N -20 0 -20 50 {lab=Vout}
N 130 -180 130 -120 {lab=#net1}
N 70 70 130 70 {lab=#net3}
N 130 -60 130 70 {lab=#net3}
N 190 30 190 70 {lab=GND}
C {devices/code.sym} -270 -190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 50 0 0 0 {name=M10
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -80 0 0 1 {name=M1
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -100 100 0 0 {name=I0 value=100u}
C {gnd.sym} -100 170 0 0 {name=l1 lab=GND}
C {vsource.sym} 70 -90 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 130 -90 0 0 {name=V2 value=0.3 savecurrent=false}
C {gnd.sym} 190 70 0 0 {name=l2 lab=GND}
C {vsource.sym} 190 0 0 0 {name=V3 value=1.8 savecurrent=false}
C {simulator_commands_shown.sym} 250 -130 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.dc V2 0 1.8 0.01
.control
run

plot v(Vout)
plot i(V1)

.endc
.end
"}
C {opin.sym} -20 50 0 0 {name=p1 lab=Vout}
