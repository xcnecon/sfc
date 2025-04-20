'step 0
wfcreate(wf=annual) a 1800 2100

'step 1.1: create exogenous variables
for %v yd theta w alpha1 alpha2 y yde h_h
series {%v}
next

'step 1.2: create endogenous variables
for %s s d
for %v g cons t n h
series {%v}_{%s}
next
next

'step 2: assign values
for %v yd y yde h_h
{%v}=0
next

for %s s d
for %v g cons t n h
{%v}_{%s}=0
next
next

w=1
theta=0.2
alpha1=0.8
alpha2=0.2

smpl @first 1949
g_d=20
smpl 1950 @last
g_d=30
smpl @all

'step 3: baseline model with yde = ye rational expectation

model sim

for %v g cons t n 
sim.append {%v}_s={%v}_d
next

sim.append yd=w*n_s-t_s
sim.append t_d=theta*w*n_s
sim.append cons_d=alpha1*yde+alpha2*h_h(-1)
sim.append h_s=h_s(-1)+g_d-t_d
sim.append h_h=h_h(-1)+yd-cons_d
sim.append h_d=h_h(-1) + yde - cons_d
sim.append y=cons_s+g_s
sim.append n_d=y/w
sim.append yde = yd

smpl 1802 @last
sim.solve

'Scenario 1: yde = yd(-2)
sim.scenario(n, a="_1")  "Scenario b"
sim.replace yde = yd(-2)
smpl 1802 @last
sim.solve

'Scenario 2: yde = yd(-1) - (G-T)
sim.scenario(n, a="_2") "Scenario c"
sim.replace yde = yd(-1) - (g_d - t_d)
smpl 1802 @last
sim.solve

'Scenario 3
sim.scenario(n, a="_3") "Scenario d"
sim.replace yde = 25
smpl 1802 @last
sim.solve

'plot
smpl 1930 2030
graph g1.line y_0 y_1 y_2 y_3
%t1 = "Initial steady state: 100 \rNew steady state: 150"
g1.addtext(al,x){%t1}
show g1

