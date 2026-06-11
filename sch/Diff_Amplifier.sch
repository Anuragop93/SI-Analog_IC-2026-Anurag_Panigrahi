v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -300 90 -300 {lab=Vm6}
N -70 0 -70 20 {lab=Vv3}
N -70 20 130 20 {lab=Vv3}
N 130 0 130 20 {lab=Vv3}
N -70 -30 130 -30 {lab=GND}
N 20 -30 20 -20 {lab=GND}
N -220 -250 -220 -60 {lab=#net1}
N -70 -370 -70 -330 {lab=#net1}
N 130 -370 130 -330 {lab=#net1}
N 130 -300 140 -300 {lab=#net1}
N -90 -300 -70 -300 {lab=#net1}
N -90 -350 -90 -300 {lab=#net1}
N -220 0 -220 60 {lab=Vm4}
N -220 40 -150 40 {lab=Vm4}
N -150 40 -150 90 {lab=Vm4}
N -220 120 -220 150 {lab=GND}
N -230 90 -220 90 {lab=GND}
N -230 90 -230 150 {lab=GND}
N 260 -120 260 -60 {lab=Vm3}
N 260 0 260 30 {lab=GND}
N 390 -250 390 -80 {lab=#net1}
N 390 -20 390 140 {lab=GND}
N 390 140 390 170 {lab=GND}
N 10 20 10 30 {lab=Vv3}
N -180 90 -150 90 {lab=Vm4}
N -120 150 -30 150 {lab=Vm4}
N -120 90 -120 150 {lab=Vm4}
N -150 90 -120 90 {lab=Vm4}
N -220 150 -220 200 {lab=GND}
N -220 200 10 200 {lab=GND}
N 10 180 10 200 {lab=GND}
N 10 200 390 200 {lab=GND}
N 390 170 390 200 {lab=GND}
N 10 150 20 150 {lab=GND}
N 20 150 20 200 {lab=GND}
N 40 200 40 220 {lab=GND}
N 260 30 260 200 {lab=GND}
N -70 -270 -70 -240 {lab=#net2}
N 130 -270 130 -240 {lab=#net3}
N -70 -180 -70 -60 {lab=Vm6}
N 130 -180 130 -60 {lab=Vm3}
N 0 -300 0 -160 {lab=Vm6}
N -220 -370 -220 -250 {lab=#net1}
N -220 -370 -70 -370 {lab=#net1}
N -70 -370 130 -370 {lab=#net1}
N 130 -370 390 -370 {lab=#net1}
N 390 -370 390 -250 {lab=#net1}
N 130 -120 260 -120 {lab=Vm3}
N -90 -370 -90 -350 {lab=#net1}
N 140 -370 140 -300 {lab=#net1}
N -230 150 -230 200 {lab=GND}
N -230 200 -220 200 {lab=GND}
N -140 -30 -110 -30 {lab=Vin1}
N 170 -30 180 -30 {lab=Vin2}
N -140 30 -140 40 {lab=GND}
N 0 -160 0 -120 {lab=Vm6}
N -70 -120 -0 -120 {lab=Vm6}
N 10 110 10 120 {lab=#net4}
N 10 30 10 50 {lab=Vv3}
N 260 -120 290 -120 {lab=Vm3}
N 180 -30 200 -30 {lab=Vin2}
N -140 40 -140 60 {lab=GND}
N -140 60 -50 60 {lab=GND}
N -50 60 200 60 {lab=GND}
N 200 30 200 60 {lab=GND}
N 120 60 120 80 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -90 -30 0 0 {name=M2
L=2
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 150 -30 0 1 {name=M1
L=2
W=5 
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -50 -300 0 1 {name=M6
L=2
W=5
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 110 -300 0 0 {name=M3
L=2
W=5
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -200 90 0 1 {name=M4
L=2
W=5
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -10 150 0 0 {name=M5
L=2
W=5 
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {devices/code.sym} -360 -320 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {gnd.sym} 20 -20 0 0 {name=l2 lab=GND}
C {isource.sym} -220 -30 0 0 {name=I0 value=50u}
C {capa.sym} 260 -30 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 390 -50 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -70 -210 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 10 80 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 40 220 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} 490 -190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.ac dec 10 1 10G 
.control
run

PLOT v(Vin1) v(Vin2) 
PLOT v(Vm3)
PLOT vdb(Vm3)
PLOT ph(Vm3)*(180/pi) 


.endc
.end
"}
C {vsource.sym} 130 -210 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} -140 0 0 0 {name=V4 value="1.2 AC = 0.5" savecurrent=false}
C {lab_pin.sym} -150 80 2 0 {name=p2 sig_type=std_logic lab=Vm4}
C {lab_pin.sym} -70 -150 2 0 {name=p3 sig_type=std_logic lab=Vm6}
C {lab_pin.sym} 290 -120 2 0 {name=p4 sig_type=std_logic lab=Vm3}
C {lab_pin.sym} 10 40 2 0 {name=p5 sig_type=std_logic lab=Vv3}
C {vsource.sym} 200 0 0 0 {name=V6 value="1.2 AC = -0.5" savecurrent=false}
C {lab_pin.sym} -120 -30 1 0 {name=p1 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} 190 -30 1 0 {name=p6 sig_type=std_logic lab=Vin2}
C {gnd.sym} 120 80 0 0 {name=l3 lab=GND}
