wfcreate(wf=lrb, page=quarter) a 1500 2100
' exogenous variables
series theta
theta.displayname Tax rate
series alpha_0_e
alpha_0_e.displayname Autonomous consumption (East)
series alpha_0_w
alpha_0_w.displayname Autonomous consumption (West)
series alpha_1_e
alpha_1_e.displayname Propensity to consume out of wages (East)
series alpha_1_w
alpha_1_w.displayname Propensity to consume out of wages (West)
series alpha_2_w
alpha_2_w.displayname Propensity to consume out of transfer payments (West)
series alpha_3_e
alpha_3_e.displayname Propensity to consume out of interest income (East)
series alpha_3_w
alpha_3_w.displayname Propensity to consume out of interest income (West)
series alpha_4_e
alpha_4_e.displayname Propensity to consume out of past net worth (East)
series alpha_4_w
alpha_4_w.displayname Propensity to consume out of past net worth (West)
series delta
delta.displayname Depreciation rate
series k_ratio_e
k_ratio_e.displayname Target capital-output ratio East
series k_ratio_w
k_ratio_w.displayname Target capital-output ratio West
series gamma
gamma.displayname Adjustment parameter towards target capital stock
series mu_e
mu_e.displayname Import propensity (East)
series mu_w
mu_w.displayname Import propensity (West)
series beta
beta.displayname Transfer rate on wages
series g_e
g_e.displayname Government expenditure (East)
series g_w
g_w.displayname Government expenditure (West)
series r_d
r_d.displayname Interest rate on deposits
series r_l
r_l.displayname Interest rate on loans
series r_b
r_b.displayname Interest rate on bills
series lambda_20_e
lambda_20_e.displayname Autonomous deposit demand (East)
series lambda_20_w
lambda_20_w.displayname Autonomous deposit demand (West)
series lambda_22_e
lambda_22_e.displayname Effect of deposit rate on deposit demand (East)
series lambda_22_w
lambda_22_w.displayname Effect of deposit rate on deposit demand (West)
series lambda_23_e
lambda_23_e.displayname Effect of bill rate on deposit demand (East)
series lambda_23_w
lambda_23_w.displayname Effect of bill rate on deposit demand (West)
series lambda_24_e
lambda_24_e.displayname Effect of income-to-wealth ratio on deposit demand (East)
series lambda_24_w
lambda_24_w.displayname Effect of income-to-wealth ratio on deposit demand (West)
series lambda_30_e
lambda_30_e.displayname Autonomous bill demand (East)
series lambda_30_w
lambda_30_w.displayname Autonomous bill demand (West)
series lambda_32_e
lambda_32_e.displayname Effect of deposit rate on bill demand (East)
series lambda_32_w
lambda_32_w.displayname Effect of deposit rate on bill demand (West)
series lambda_33_e
lambda_33_e.displayname Effect of bill rate on bill demand (East)
series lambda_33_w
lambda_33_w.displayname Effect of bill rate on bill demand (West)
series lambda_34_e
lambda_34_e.displayname Effect of income-to-wealth ratio on bill demand (East)
series lambda_34_w
lambda_34_w.displayname Effect of income-to-wealth ratio on bill demand (West)

' stock variables
series m_e
m_e.displayname Bank deposit held by east households
series m_w
m_w.displayname Bank deposit held by west households
series m_cb
m_cb.displayname Bank deposit held by central bank
series m
m.displayname Total money deposits
series l_e
l_e.displayname Loans to east firms
series l_w
l_w.displayname Loans to west firms
series l
l.displayname Total loans
series h_e
h_e.displayname Cash held by east households
series h_w
h_w.displayname Cash held by west households
series h
h.displayname Total cash
series b_e
b_e.displayname Bills held by east households
series b_w
b_w.displayname Bills held by west households
series b_cb
b_cb.displayname Bills held by central bank
series b
b.displayname Total bills
series k_e
k_e.displayname Capital stock of east firms
series k_w
k_w.displayname Capital stock of west firms
series k_tot
k_tot.displayname Total capital stock
series v_e
v_e.displayname Net worth of east households
series v_w
v_w.displayname Net worth of west households

' flow variables
series c_e
c_e.displayname Consumption of east households
series c_w
c_w.displayname Consumption of west households
series i_e
i_e.displayname Investment by east firms
series i_w
i_w.displayname Investment by west firms
series g
g.displayname Total government expenditure
series x_e
x_e.displayname Exports from east
series x_w
x_w.displayname Exports from west
series im_e
im_e.displayname Imports to east
series im_w
im_w.displayname Imports to west
series y_e
y_e.displayname GDP of east
series y_w
y_w.displayname GDP of west
series y
y.displayname Aggregate GDP
series wb_e
wb_e.displayname Wage bill of east
series wb_w
wb_w.displayname Wage bill of west
series af_e
af_e.displayname Depreciation of east capital
series af_w
af_w.displayname Depreciation of west capital
series nt
nt.displayname Net transfer from east to west
series t_e
t_e.displayname Taxes from east
series t_w
t_w.displayname Taxes from west
series t
t.displayname Total tax revenue
series di_e
di_e.displayname Disposable income of east households
series di_w
di_w.displayname Disposable income of west households
series k_t_e
k_t_e.displayname Target capital stock for east
series k_t_w
k_t_w.displayname Target capital stock for west
series d_l_e
d_l_e.displayname Change in loans to east firms
series d_l_w
d_l_w.displayname Change in loans to west firms
series d_b
d_b.displayname Change in total bills
series int_l
int_l.displayname Interest paid on loans
series int_d
int_d.displayname Interest received on deposits

' First, initialize all variables to 0 for all periods
smpl @all
' Flow variables
c_e = 0
c_w = 0
i_e = 0
i_w = 0
x_e = 0
x_w = 0
im_e = 0
im_w = 0
y_e = 0
y_w = 0
wb_e = 0
wb_w = 0
af_e = 0
af_w = 0
nt = 0
t_e = 0
t_w = 0
t = 0
di_e = 0
di_w = 0
k_t_e = 0
k_t_w = 0
d_l_e = 0
d_l_w = 0
d_b = 0
int_l = 0
int_d = 0
y = 0

' Stock variables
m_e = 0
m_w = 0
m_cb = 0
m = 0
l_e = 0
l_w = 0
l = 0
h_e = 0
h_w = 0
h = 0
b_e = 0
b_w = 0
b_cb = 0
b = 0
k_e = 0
k_w = 0
k_tot = 0
v_e = 0
v_w = 0

' Second, set values for exogenous parameters
smpl @all
' exogenous variables
theta = 0.2
alpha_0_e = 20
alpha_0_w = 20
alpha_1_e = 0.6
alpha_1_w = 0.8
alpha_2_w = 0.9
alpha_3_e = 0.5
alpha_3_w = 0.5
alpha_4_e = 0.1
alpha_4_w = 0.1
delta = 0.1
k_ratio_e = 2
k_ratio_w = 2
gamma = 0.2
mu_e = 0.1
mu_w = 0.2
beta = 0
g_e = 100
g_w = 50
r_d = 0.02
r_l = 0.02
r_b = 0.04
lambda_20_e = 0.4
lambda_20_w = 0.4
lambda_22_e = 0.02
lambda_22_w = 0.02
lambda_23_e = -0.02
lambda_23_w = -0.02
lambda_30_e = 0.4
lambda_30_w = 0.4
lambda_32_e = -0.02
lambda_32_w = -0.02
lambda_33_e = 0.02
lambda_33_w = 0.02


' Create model definition
model lrb

'add equations
'Consumption equations
lrb.append c_e = alpha_0_e + (wb_e - nt)*(1-theta)*alpha_1_e + (r_d(-1)*m_e(-1) + r_b(-1)*b_e(-1))*(1-theta)*alpha_3_e + v_e*alpha_4_e
lrb.append c_w = alpha_0_w + (1-theta)*(alpha_1_w * wb_w + alpha_2_w * nt + alpha_3_w * (r_d(-1)*m_w(-1) + r_b(-1)*b_w(-1))) + alpha_4_w * v_w
lrb.append wb_e = y_e - r_l(-1) * l_e(-1) - af_e
lrb.append wb_w = y_w - r_l(-1) * l_w(-1) - af_w

'Capital Investment
lrb.append r_d = r_l
lrb.append af_e = delta * k_e(-1)
lrb.append af_w = delta * k_w(-1)
lrb.append k_t_e = k_ratio_e * y_e(-1)
lrb.append k_t_w = k_ratio_w * y_w(-1)
lrb.append i_e = (gamma * (k_t_e - k_e(-1)) + af_e) * ((gamma * (k_t_e - k_e(-1)) + af_e) > 0)
lrb.append i_w = (gamma * (k_t_w - k_w(-1)) + af_w) * ((gamma * (k_t_w - k_w(-1)) + af_w) > 0)
lrb.append k_e = k_e(-1) + i_e - af_e
lrb.append k_w = k_w(-1) + i_w - af_w
lrb.append d_l_e = i_e - af_e
lrb.append d_l_w = i_w - af_w
lrb.append l_e = l_e(-1) + d_l_e
lrb.append l_w = l_w(-1) + d_l_w
lrb.append l = l_e + l_w
lrb.append k_tot = k_e + k_w

'Trade and transfers
lrb.append im_e = mu_e * y_e
lrb.append im_w = mu_w * y_w
lrb.append x_e = im_w
lrb.append x_w = im_e
lrb.append nt = (wb_e*(1-theta)* beta) * (wb_e > 0)

'Interest payments
lrb.append int_l = r_l(-1) * l_w(-1) + r_l(-1) * l_e(-1)
lrb.append int_d = r_d(-1) * m_w(-1) + r_d(-1) * m_e(-1)

'Government
lrb.append y_e = c_e + i_e + g_e + x_e - im_e
lrb.append y_w = c_w + i_w + g_w + x_w - im_w
lrb.append y = y_e + y_w
lrb.append t_e = (wb_e + r_d(-1) * m_e(-1) + r_b(-1) * b_e(-1) - nt) * theta
lrb.append t_w = (wb_w + r_d(-1) * m_w(-1) + r_b(-1) * b_w(-1) + nt) * theta
lrb.append g = g_e + g_w
lrb.append t = t_e + t_w
lrb.append d_b = g + r_b(-1) * b(-1) - r_b(-1) * b_cb(-1) - r_d(-1) * m_cb(-1) - t
lrb.append b = b(-1) + d_b

'Portfolio decisions
lrb.append di_e = wb_e + r_d(-1) * m_e(-1) + r_b(-1) * b_e(-1) - nt - t_e
lrb.append di_w = wb_w + r_d(-1) * m_w(-1) + r_b(-1) * b_w(-1) + nt - t_w
lrb.append v_e = v_e(-1) + di_e - c_e
lrb.append v_w = v_w(-1) + di_w - c_w
lrb.append m_e = v_e * (lambda_20_e + lambda_22_e * r_d + lambda_23_e * r_b)
lrb.append m_w = v_w * (lambda_20_w + lambda_22_w * r_d + lambda_23_w * r_b)
lrb.append b_e = v_e * (lambda_30_e + lambda_32_e * r_d + lambda_33_e * r_b)
lrb.append b_w = v_w * (lambda_30_w + lambda_32_w * r_d + lambda_33_w * r_b)
lrb.append h_e = v_e - m_e - b_e
lrb.append h_w = v_w - m_w - b_w
lrb.append m = l
lrb.append b_cb = b - b_w - b_e
lrb.append m_cb = m - m_w - m_e
lrb.append h = b_cb + m_cb

' solve the baseline model
smpl 1701 @last
lrb.solve

'reduce Import
lrb.scenario(n, a="_2")  "Scenario b"
smpl 1900 @last
mu_w = 0.15
smpl @all
lrb.solve
smpl 1850 @last
graph gdp_2.line y_2
graph region_gdp_2.line y_e_2 y_w_2
graph wealth_2.line v_e_2 v_w_2
graph consumption_2.line c_e_2 c_w_2
graph transfer_2.line nt_2
graph ratio_2.line y_e_2/y_w_2
graph di_2.line di_e_2 di_w_2
smpl 1850 @last
mu_w = 0.2

'increase government expenditure in west
lrb.scenario(n, a="_4")  "Scenario d"
smpl 1900 @last
g_w = 70
smpl @all
lrb.solve
smpl 1850 @last
graph gdp_4.line y_4
graph region_gdp_4.line y_e_4 y_w_4
graph wealth_4.line v_e_4 v_w_4
graph consumption_4.line c_e_4 c_w_4
graph transfer_4.line nt_4
graph ratio_4.line y_e_4/y_w_4
graph di_4.line di_e_4 di_w_4
smpl 1850 @last
g_w = 50

'increase government expenditure in east
lrb.scenario(n, a="_5")  "Scenario e"
smpl 1900 @last
g_e = 120
smpl @all
lrb.solve
smpl 1850 @last
graph gdp_5.line y_5
graph region_gdp_5.line y_e_5 y_w_5
graph wealth_5.line v_e_5 v_w_5
graph consumption_5.line c_e_5 c_w_5
graph transfer_5.line nt_5
graph ratio_5.line y_e_5/y_w_5
graph di_5.line di_e_5 di_w_5
smpl 1850 @last
g_e = 100

' increase loan rate
lrb.scenario(n, a="_6")  "Scenario f"
smpl 1900 @last
r_l = 0.04
r_d = 0.04
smpl @all
lrb.solve
smpl 1850 @last
graph gdp_6.line y_6
graph region_gdp_6.line y_e_6 y_w_6
graph wealth_6.line v_e_6 v_w_6
graph consumption_6.line c_e_6 c_w_6
graph transfer_6.line nt_6
graph ratio_6.line y_e_6/y_w_6
graph di_6.line di_e_6 di_w_6
smpl 1850 @last
r_l = 0.02
r_d = 0.02

' increase tax
lrb.scenario(n, a="_7")  "Scenario g"
smpl 1900 @last
theta = 0.3
smpl @all
lrb.solve
smpl 1850 @last
graph gdp_7.line y_7
graph region_gdp_7.line y_e_7 y_w_7
graph wealth_7.line v_e_7 v_w_7
graph consumption_7.line c_e_7 c_w_7
graph transfer_7.line nt_7
graph ratio_7.line y_e_7/y_w_7
graph di_7.line di_e_7 di_w_7
smpl 1850 @last
theta = 0.2

' Embargo
lrb.scenario(n, a="_8")  "Scenario h"
smpl 1900 @last
mu_e = 0
mu_w = 0
smpl @all
lrb.solve
smpl 1850 @last
graph gdp_8.line y_8
graph region_gdp_8.line y_e_8 y_w_8
graph wealth_8.line v_e_8 v_w_8
graph consumption_8.line c_e_8 c_w_8
graph transfer_8.line nt_8
graph ratio_8.line y_e_8/y_w_8
graph di_8.line di_e_8 di_w_8
smpl 1850 @last
mu_e = 0.1
mu_w = 0.2

' investment shock in east
lrb.scenario(n, a="_9")  "Scenario i"
smpl 1900 @last
k_ratio_e = 1.8
smpl @all
lrb.solve
smpl 1850 @last
graph gdp_9.line y_9
graph region_gdp_9.line y_e_9 y_w_9
graph wealth_9.line v_e_9 v_w_9
graph consumption_9.line c_e_9 c_w_9
graph transfer_9.line nt_9
graph ratio_9.line y_e_9/y_w_9
graph di_9.line di_e_9 di_w_9
graph investment_east_9.line i_e_9
graph capital_east_9.line k_e_9
graph wage_east_9.line wb_e_9
smpl 1850 @last
k_ratio_e = 2

'increase bill rate
lrb.scenario(n, a="_10")  "Scenario j"
smpl 1900 @last
r_b = 0.07
smpl @all
lrb.solve
smpl 1850 @last
graph gdp_10.line y_10
graph region_gdp_10.line y_e_10 y_w_10
graph wealth_10.line v_e_10 v_w_10
graph consumption_10.line c_e_10 c_w_10
graph transfer_10.line nt_10
graph ratio_10.line y_e_10/y_w_10
graph di_10.line di_e_10 di_w_10
smpl 1850 @last
r_b = 0.04