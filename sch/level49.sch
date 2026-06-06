v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -10 90 -10 {lab=Vsb}
N 90 -10 90 -0 {lab=Vsb}
N -50 20 -50 80 {lab=GND}
N -50 80 90 80 {lab=GND}
N 90 60 90 80 {lab=GND}
N -50 80 -50 100 {lab=GND}
N -210 -80 -210 -0 {lab=Vgs}
N -210 -80 -50 -80 {lab=Vgs}
N -50 -80 -50 -40 {lab=Vgs}
N -210 60 -210 80 {lab=GND}
N -210 80 -50 80 {lab=GND}
N -120 -10 -90 -10 {lab=Vgs}
N -120 -80 -120 -10 {lab=Vgs}
C {sky130_fd_pr/nfet_01v8.sym} -70 -10 0 0 {name=M2
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/code.sym} -370 -170 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {vsource.sym} -210 30 0 0 {name=Vgs value=1.8 savecurrent=false}
C {vsource.sym} 90 30 2 0 {name=Vsb value=1 savecurrent=false}
C {gnd.sym} -50 100 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} 150 -190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.dc Vgs 0 1.8 0.01 Vsb 0 1 0.5

.control
run

LET Id = abs(i(Vgs))
LET rt_id = sqrt(Id)

PLOT rt_id

LET d_rt_id = deriv(rt_id)

MEAS DC d_at_1v FIND d_rt_id AT= 1.2
LET ucox = (2.0/5.0)*(d_at_1v)^2
print ucox

MEAS DC rt_id_at_1 FIND rt_id AT = 1.2
LET Vt = 1.2 - (d_at_1v^-1 * rt_id_at_1)
print Vt

LET gamma = (0.72 - 0.51)/\{(sqrt(0.846+1)-sqrt(0.846))\}
print gamma

.endc
.end
"}
C {lab_pin.sym} -210 -40 0 0 {name=p1 sig_type=std_logic lab=Vgs}
C {lab_pin.sym} 50 -10 1 0 {name=p2 sig_type=std_logic lab=Vsb}
