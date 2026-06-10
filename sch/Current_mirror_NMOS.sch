v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -70 40 -70 {lab=Vout}
N -110 -130 -110 -100 {lab=Vout}
N -110 -40 -110 -10 {lab=GND}
N -110 -10 80 -10 {lab=GND}
N 80 -40 80 -10 {lab=GND}
N -140 -70 -110 -70 {lab=GND}
N -140 -70 -140 -20 {lab=GND}
N -140 -20 -110 -20 {lab=GND}
N 80 -70 100 -70 {lab=GND}
N 100 -70 100 -20 {lab=GND}
N 80 -20 100 -20 {lab=GND}
N -20 -10 -20 20 {lab=GND}
N 80 -210 80 -190 {lab=#net1}
N 80 -210 200 -210 {lab=#net1}
N 200 -210 200 -100 {lab=#net1}
N 200 -40 200 0 {lab=GND}
N -20 0 200 0 {lab=GND}
N 80 -130 80 -100 {lab=#net2}
N -110 -120 -40 -120 {lab=Vout}
N -40 -120 -40 -70 {lab=Vout}
N -170 -210 -170 -160 {lab=GND}
N -170 -210 -110 -210 {lab=GND}
N -110 -210 -110 -190 {lab=GND}
C {devices/code.sym} -370 -150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8.sym} 60 -70 0 0 {name=M3
L=0.5
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -90 -70 0 1 {name=M2
L=0.5
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {isource.sym} -110 -160 0 0 {name=I0 value="PULSE(0 100u 1n 10p 10p 0.5 1)"}
C {gnd.sym} -20 20 0 0 {name=l1 lab=GND}
C {vsource.sym} 80 -160 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 200 -70 0 0 {name=V2 value=0.91 savecurrent=false}
C {gnd.sym} -170 -160 0 0 {name=l2 lab=GND}
C {opin.sym} -40 -120 0 0 {name=p2 lab=Vout}
C {simulator_commands_shown.sym} 240 -170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran 1p 10n
.control
run

PLOT v(Vout) 
PLOT i(v1)

.endc
.end
"}
