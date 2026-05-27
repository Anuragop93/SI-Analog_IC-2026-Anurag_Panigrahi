v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 -30 -80 -30 {lab=Vin}
N 30 -30 80 -30 {lab=Vout}
N 30 -30 30 -10 {lab=Vout}
N -20 -30 30 -30 {lab=Vout}
N 30 50 30 70 {lab=ref}
C {res.sym} -50 -30 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 30 20 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} -110 -30 0 0 {name=p1 lab=Vin
}
C {iopin.sym} 30 70 1 0 {name=p3 lab=ref}
C {opin.sym} 80 -30 0 0 {name=p2 lab=Vout}
