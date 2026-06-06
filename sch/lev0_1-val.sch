v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 200 -80 200 {lab=Vsb}
N -80 200 -80 210 {lab=Vsb}
N -220 230 -220 290 {lab=GND}
N -220 290 -80 290 {lab=GND}
N -80 270 -80 290 {lab=GND}
N -220 290 -220 310 {lab=GND}
N -380 130 -380 210 {lab=Vgs}
N -380 130 -220 130 {lab=Vgs}
N -220 130 -220 170 {lab=Vgs}
N -380 270 -380 290 {lab=GND}
N -380 290 -220 290 {lab=GND}
N -290 200 -260 200 {lab=Vgs}
N -290 130 -290 200 {lab=Vgs}
C {sky130_fd_pr/nfet_01v8.sym} -240 200 0 0 {name=M2
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/code.sym} -540 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {vsource.sym} -380 240 0 0 {name=Vgs value=1.8 savecurrent=false}
C {vsource.sym} -80 240 2 0 {name=Vsb value=1 savecurrent=false}
C {gnd.sym} -220 310 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -380 170 0 0 {name=p1 sig_type=std_logic lab=Vgs}
C {lab_pin.sym} -120 200 1 0 {name=p2 sig_type=std_logic lab=Vsb}
C {simulator_commands_shown.sym} 20 -70 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.dc Vgs 0 1.8 0.01

.control
run

LET Id = abs(i(Vgs))
LET rt_id = sqrt(Id)

LET d_rt_id = deriv(rt_id)

MEAS DC d_at_1v FIND d_rt_id AT= 1.2

MEAS DC rt_id_at_1 FIND rt_id AT = 1.2

LET Vt1 = 1.2 - (rt_id_at_1/d_at_1v)
print Vt1



.endc
.end
"}
