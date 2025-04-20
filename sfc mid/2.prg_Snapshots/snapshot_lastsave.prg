wfcreate(wf=lp, page=annual) a 1800 2100

' Creates and documents series
series b_cb
b_cb.displayname Government bills held by Central Bank
series b_d
b_d.displayname Demand for government bills
series b_h
b_h.displayname Government bills held by households
series b_s
b_s.displayname Government bills supplied by government
series bl_d
bl_d.displayname Demand for government bonds
series bl_h
bl_h.displayname Government bonds held by households
series bl_s
bl_s.displayname Supply for government bonds
series cg
cg.displayname Capital gains on bonds
series cg_e
cg_e.displayname Expected capital gains on bonds
series cons
cons.displayname Consumption goods
series er_rbl
er_rbl.displayname Expected rate of return on bonds
series g
g.displayname Government goods
series g_bar
g_bar.displayname Exogenously set government goods
series h_d
h_d.displayname Demand for cash
series h_h
h_h.displayname Cash money held by households
series h_s
h_s.displayname Cash money supplied by central bank
series p_bl
p_bl.displayname Price of bonds
series p_bl_e
p_bl_e.displayname Expected price of bonds
series p_bl_bar
p_bl_bar.displayname Exogenously set price of bonds
series r_b
r_b.displayname Interest rate on government bills
series r_bar
r_bar.displayname Exogenously set interest rate on government bills
series r_bl
r_bl.displayname Interest rate on government bonds
series t
t.displayname Taxes
series v
v.displayname Households wealth
series v_e
v_e.displayname Expected households wealth
series y
y.displayname Output
series yd
yd.displayname Disposable income of households
series yd_e
yd_e.displayname Expected Disposable income of households

' Generate parameters
series alpha1
alpha1.displayname Propensity to consume out of income
series alpha2
alpha2.displayname Propensity to consume out of wealth
series chi
chi.displayname Weight of conviction in expected bond price
series lambda10
lambda10.displayname Parameter in asset demand function
series lambda12
lambda12.displayname Parameter in asset demand function
series lambda13
lambda13.displayname Parameter in asset demand function
series lambda14
lambda14.displayname Parameter in asset demand function
series lambda20
lambda20.displayname Parameter in asset demand function
series lambda22
lambda22.displayname Parameter in asset demand function
series lambda23
lambda23.displayname Parameter in asset demand function
series lambda24
lambda24.displayname Parameter in asset demand function
series lambda30
lambda30.displayname Parameter in asset demand function
series lambda32
lambda32.displayname Parameter in asset demand function
series lambda33
lambda33.displayname Parameter in asset demand function
series lambda34
lambda34.displayname Parameter in asset demand function
series theta
theta.displayname Tax rate

' Set sample size to all workfile range
smpl @all

' Assign values for
'   PARAMETERS
alpha1=0.8
alpha2=0.2
chi=0.1
lambda20 = 0.44196
lambda22 = 1.1
lambda23 = 1
lambda24 = 0.03
lambda30 = 0.3997
lambda32 = 1
lambda33 = 1.1
lambda34 = 0.03
theta=0.1938
'   EXOGENOUS
g_bar=20
r_bar = 0.07
p_bl_bar = 11.1111111111
'   Set initials to 0
y = 0
v = 0
b_h =0 
b_s = 0
b_cb = 0
bl_h = 0
h_s = 0
' Opening values for lagged endogenous
yd = 0
r_b = r_bar
p_bl = p_bl_bar
bl_s = 0
g = g_bar

' Create a model object, and name it lp

model lp

' Add equations to model LP

' Determination of output - eq. 5.1
lp.append y = cons + g

' Regular disposable income - eq. 5.2
lp.append yd = y - t + r_b(-1)*b_h(-1) + bl_h(-1)

' Tax payments - eq. 5.3
lp.append t = theta*(y + r_b(-1)*b_h(-1) + bl_h(-1))

' Wealth accumulation - eq. 5.4
lp.append v = v(-1) + (yd - cons) + cg

' Capital gains on bonds - eq. 5.5
lp.append cg = (p_bl-p_bl(-1))*bl_h(-1)

' Consumption function - eq. 5.6
lp.append cons = alpha1*yd_e + alpha2*v(-1)

' Expected wealth - eq. 5.7
lp.append v_e = v(-1) + (yd_e - cons) + cg

' Cash money - eq. 5.8
lp.append h_h = v - b_h - p_bl*bl_h

' Demand for cash - eq. 5.9
lp.append h_d = v_e - b_d - p_bl*bl_d

' Demand for government bills - eq. 5.10
lp.append b_d = v_e*(lambda20 + lambda22*r_b - lambda23*er_rbl - lambda24*(yd_e/v_e))

' Demand for government bonds - eq. 5.11
lp.append bl_d = v_e*(lambda30 - lambda32*r_b + lambda33*er_rbl - lambda34*(yd_e/v_e))/p_bl

' Bills held by households - eq. 5.12
lp.append b_h = b_d

' Bonds held by households - eq. 5.13
lp.append bl_h = bl_d

' Supply of government bills - eq. 5.14
lp.append b_s = b_s(-1) + (g + r_b(-1)*b_s(-1) + bl_s(-1)) - (t + r_b(-1)*b_cb(-1)) -p_bl*(bl_s-bl_s(-1))

' Supply of cash - eq. 5.15
lp.append h_s = h_s(-1) + b_cb - b_cb(-1)

' Government bills held by the central bank - eq. 5.16
lp.append b_cb = b_s - b_h

' Supply of government bonds - eq. 5.17
lp.append bl_s = bl_h

' Expected rate of return on bonds - eq. 5.18
lp.append er_rbl = r_bl+chi*(p_bl_e - p_bl)/p_bl

' Interest rate on bonds - eq. 5.19
lp.append r_bl = 1/p_bl

' Expected price of bonds - eq. 5.20
lp.append p_bl_e = p_bl

' Expected capital gains - eq. 5.21
lp.append cg_e = chi*(p_bl_e - p_bl)*bl_h

' Expected regular disposable income - eq. 5.22; let's assume perfect foresight here
lp.append yd_e = yd

' Interest rate on bills - eq. 5.23
lp.append r_b = r_bar

' Price of bonds - eq. 5.24
lp.append p_bl = p_bl_bar

' exogenously set government expenditure
lp.append g = g_bar

' End of model

' Select the baseline scenario

lp.scenario baseline

' Solve the model for the current sample
lp.solve

' Scenario 1: increase bill rate from 7% to 12%
lp.scenario(o, a="_1")  "Scenario 1"

lp.replace r_b = @recode(@year >= 1930,0.12, r_bar)

lp.solve
lp.replace r_b = r_bar

' Scenario 2: increase bond rate from 9% to 10%
lp.scenario(n, a="_2")  "Scenario 2"

lp.replace p_bl = @recode(@year >= 1930, 10, p_bl_bar)

lp.solve
lp.replace p_bl = p_bl_bar

' Change model to include hysteresis
lp.scenario(n, a="_99")  "Scenario 99"

series z1
series top
top.displayname Top value for TP
series bot
top.displayname Bottom value for TP
series z1
z1.displayname Switch parameter 1
series z2
z2.displayname Switch parameter 2
series beta
beta.displayname Adjustment parameter in price of bills

z1 = 0
z2 = 0
bot=0.495
top=0.505
beta=0.05

lp.append tp = @recode(bl_h(-1) > 0, (bl_h(-1)*p_bl(-1))/(bl_h(-1)*p_bl(-1) + b_h(-1)), 0.5)
lp.append z1 = (tp > top)
lp.append z2 = (tp < bot)
lp.replace p_bl = (1 + z1*beta - z2*beta)*p_bl(-1)

lp.solve

' Scenario 3: 
lp.scenario(n, a="_3")  "Scenario 3"

lp.replace r_b = @recode(@year >= 1930,0.12, r_bar)

lp.solve
lp.replace r_b = r_bar

' Scenario 4:
lp.scenario(n, a="_4")  "Scenario 4"
lp.replace p_bl = @recode(@year = 1930, 10, (1 + z1*beta - z2*beta)*p_bl(-1))

lp.solve
lp.replace p_bl = (1 + z1*beta - z2*beta)*p_bl(-1)

'plot q 1
smpl 1900 2000
graph g1.line y_1 y_2
%t1 = " Scenario 1\r Initial steady state: 133.26\r New steady state: 149.43"
%t2 = " Scenario 2\r Initial Stready State: 133.26 \r New steady state:136.15"
g1.addtext(al, x) {%t1}
g1.addtext(ar, x) {%t2}
show g1

' plot q2 
graph g2.line y_1 y_3
%t1 = " Scenario 1\r Initial steady state: 133.26\r New steady state: 149.43"
%t2 = " Scenario 3\r Initial Stready State: 133.26 \r New steady state:169.39"
g2.addtext(al, x) {%t1}
g2.addtext(ar, x) {%t2}
show g2

graph g3.line y_2 y_4
%t1 = " Scenario 2\r Initial steady state: 133.26\r New steady state: 136.15"
%t2 = " Scenario 4\r Initial Stready State: 133.26 \r New steady state:133.46"
g3.addtext(al, x) {%t1}
g3.addtext(ar, x) {%t2}
show g3


