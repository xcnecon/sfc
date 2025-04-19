'model sim
'step 0
wfcreate(wf=annual) a 1940 2040

'step 1.1
for %v yd theta w alpha1 alpha2 y r  lambda0 lambda1 lambda2 b_cb v
series {%v}
next


'step 1.2
for %s s d
for %v g cons t n h b
series {%v}_{%s}
next
next


'step 2

for %v yd y v
{%v}=0
next


for %s s d
for %v g cons t n h b 
{%v}_{%s}=0
next
next

w=1
theta=0.2
alpha1=0.6
alpha2=0.4
b_cb = 0
lambda0 = 0.6
lambda1 = 5
lambda2 = 0.1
g_d=20

smpl @first 2000
r = 0.035
smpl 2001 @last
r = 0.1
smpl @all

model sim

for %v g cons t n 
sim.append {%v}_s={%v}_d
next

sim.append yd=w*n_s + r(-1) * b_d(-1) - t_s
sim.append t_d=theta*(w*n_s + r(-1) * b_d(-1))
sim.append cons_d=alpha1*yd+alpha2*h_d(-1)
sim.append v= v(-1) + yd - cons_d
sim.append y=cons_s+g_s
sim.append n_d=y/w
sim.append b_d = lambda0 + lambda1 * r - lambda2 * yd / v
sim.append h_d = yd - b_d
sim.append h_s = h_s(-1) + b_cb - b_cb(-1)
sim.append b_s = b_s(-1) + g_d + r(-1) * b_s(-1) - t_d - r(-1) * b_cb(-1)
sim.append b_cb = b_s - b_d

'step 4

sim.solve

'plot graph
'if you don't want to save the plot
'plot y_0
'if want to save
'graph graph1.line y_0
