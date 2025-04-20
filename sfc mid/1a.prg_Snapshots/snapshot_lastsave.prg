
'step 0
wfcreate(wf=annual) a 1940 2040

'step 1.1
for %v yd theta w alpha1 alpha2 y yde h_h
series {%v}
next


'step 1.2
for %s s d
for %v g cons t n h
series {%v}_{%s}
next
next


'step 2

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
alpha1=0.6
alpha2=0.4

smpl @first 2000
g_d=20
smpl 2001 @last
g_d=30
smpl @all

'step 3

model sim

for %v g cons t n 
sim.append {%v}_s={%v}_d
next

sim.append yd=w*n_s-t_s
sim.append t_d=theta*w*n_s
sim.append cons_d=alpha1*yde+alpha2*h_h(-1)
sim.append h_s=h_s(-1)+g_d-t_d
sim.append h_h=h_d(-1)+yd-cons_d
sim.append h_d=h_h(-1) + yde - cons_d
sim.append y=cons_s+g_s
sim.append n_d=y/w
sim.append yde = yd

'step 4

sim.solve

'Scenario 1: yde = yd(-2)
smpl 2001 @last
sim.replace yde = yd(-2)
smpl @all
sim.scenario "Scenario 1"
sim.solve

'Scenario 2: yde = yd(-1) - (G-T)
smpl 2001 @last
sim.replace yde = yd(-1) - (g_d_2 - t_d_2)
smpl @all
sim.scenario "Scenario 2"
sim.solve


