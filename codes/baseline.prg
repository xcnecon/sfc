' -----------------------------------------------------------
' Model Setup and Variable Declarations
' -----------------------------------------------------------
wfcreate(wf=lrb, page=quarter) a 1500 2100

' -----------------------------
' Exogenous Variables (Parameters)
' -----------------------------
series theta              ' Tax rate
theta.displayname Tax rate
series alpha_0_e          ' Autonomous consumption (East)
alpha_0_e.displayname Autonomous consumption (East)
series alpha_0_w          ' Autonomous consumption (West)
alpha_0_w.displayname Autonomous consumption (West)
series alpha_1_e          ' Propensity to consume out of wages (East)
alpha_1_e.displayname Propensity to consume out of wages (East)
series alpha_1_w          ' Propensity to consume out of wages (West)
alpha_1_w.displayname Propensity to consume out of wages (West)
series alpha_2_w          ' Propensity to consume out of transfer payments (West)
alpha_2_w.displayname Propensity to consume out of transfer payments (West)
series alpha_3_e          ' Propensity to consume out of interest income (East)
alpha_3_e.displayname Propensity to consume out of interest income (East)
series alpha_3_w          ' Propensity to consume out of interest income (West)
alpha_3_w.displayname Propensity to consume out of interest income (West)
series alpha_4_e          ' Propensity to consume out of past net worth (East)
alpha_4_e.displayname Propensity to consume out of past net worth (East)
series alpha_4_w          ' Propensity to consume out of past net worth (West)
alpha_4_w.displayname Propensity to consume out of past net worth (West)
series delta              ' Depreciation rate
delta.displayname Depreciation rate
series k_ratio_e          ' Target capital-output ratio East
k_ratio_e.displayname Target capital-output ratio East
series k_ratio_w          ' Target capital-output ratio West
k_ratio_w.displayname Target capital-output ratio West
series gamma              ' Adjustment parameter towards target capital stock
gamma.displayname Adjustment parameter towards target capital stock
series mu_e               ' Import propensity (East)
mu_e.displayname Import propensity (East)
series mu_w               ' Import propensity (West)
mu_w.displayname Import propensity (West)
series beta               ' Transfer rate on wages (remittance parameter)
beta.displayname Transfer rate on wages
series g_e                ' Government expenditure (East)
g_e.displayname Government expenditure (East)
series g_w                ' Government expenditure (West)
g_w.displayname Government expenditure (West)
series r_d                ' Interest rate on deposits
r_d.displayname Interest rate on deposits
series r_l                ' Interest rate on loans
r_l.displayname Interest rate on loans
series r_b                ' Interest rate on bills
r_b.displayname Interest rate on bills
series lambda_20_e        ' Autonomous deposit demand (East)
lambda_20_e.displayname Autonomous deposit demand (East)
series lambda_20_w        ' Autonomous deposit demand (West)
lambda_20_w.displayname Autonomous deposit demand (West)
series lambda_22_e        ' Effect of deposit rate on deposit demand (East)
lambda_22_e.displayname Effect of deposit rate on deposit demand (East)
series lambda_22_w        ' Effect of deposit rate on deposit demand (West)
lambda_22_w.displayname Effect of deposit rate on deposit demand (West)
series lambda_23_e        ' Effect of bill rate on deposit demand (East)
lambda_23_e.displayname Effect of bill rate on deposit demand (East)
series lambda_23_w        ' Effect of bill rate on deposit demand (West)
lambda_23_w.displayname Effect of bill rate on deposit demand (West)
series lambda_24_e        ' Effect of income-to-wealth ratio on deposit demand (East)
lambda_24_e.displayname Effect of income-to-wealth ratio on deposit demand (East)
series lambda_24_w        ' Effect of income-to-wealth ratio on deposit demand (West)
lambda_24_w.displayname Effect of income-to-wealth ratio on deposit demand (West)
series lambda_30_e        ' Autonomous bill demand (East)
lambda_30_e.displayname Autonomous bill demand (East)
series lambda_30_w        ' Autonomous bill demand (West)
lambda_30_w.displayname Autonomous bill demand (West)
series lambda_32_e        ' Effect of deposit rate on bill demand (East)
lambda_32_e.displayname Effect of deposit rate on bill demand (East)
series lambda_32_w        ' Effect of deposit rate on bill demand (West)
lambda_32_w.displayname Effect of deposit rate on bill demand (West)
series lambda_33_e        ' Effect of bill rate on bill demand (East)
lambda_33_e.displayname Effect of bill rate on bill demand (East)
series lambda_33_w        ' Effect of bill rate on bill demand (West)
lambda_33_w.displayname Effect of bill rate on bill demand (West)
series lambda_34_e        ' Effect of income-to-wealth ratio on bill demand (East)
lambda_34_e.displayname Effect of income-to-wealth ratio on bill demand (East)
series lambda_34_w        ' Effect of income-to-wealth ratio on bill demand (West)
lambda_34_w.displayname Effect of income-to-wealth ratio on bill demand (West)

' -----------------------------
' Stock Variables (Levels)
' -----------------------------
series m_e                ' Bank deposit held by east households
m_e.displayname Bank deposit held by east households
series m_w                ' Bank deposit held by west households
m_w.displayname Bank deposit held by west households
series m_cb               ' Bank deposit held by central bank
m_cb.displayname Bank deposit held by central bank
series m                  ' Total money deposits
m.displayname Total money deposits
series l_e                ' Loans to east firms
l_e.displayname Loans to east firms
series l_w                ' Loans to west firms
l_w.displayname Loans to west firms
series l                  ' Total loans
l.displayname Total loans
series h_e                ' Cash held by east households
h_e.displayname Cash held by east households
series h_w                ' Cash held by west households
h_w.displayname Cash held by west households
series h                  ' Total cash
h.displayname Total cash
series b_e                ' Bills held by east households
b_e.displayname Bills held by east households
series b_w                ' Bills held by west households
b_w.displayname Bills held by west households
series b_cb               ' Bills held by central bank
b_cb.displayname Bills held by central bank
series b                  ' Total bills
b.displayname Total bills
series k_e                ' Capital stock of east firms
k_e.displayname Capital stock of east firms
series k_w                ' Capital stock of west firms
k_w.displayname Capital stock of west firms
series k_tot              ' Total capital stock
k_tot.displayname Total capital stock
series v_e                ' Net worth of east households
v_e.displayname Net worth of east households
series v_w                ' Net worth of west households
v_w.displayname Net worth of west households

' -----------------------------
' Flow Variables (Period Flows)
' -----------------------------
series c_e                ' Consumption of east households
c_e.displayname Consumption of east households
series c_w                ' Consumption of west households
c_w.displayname Consumption of west households
series i_e                ' Investment by east firms
i_e.displayname Investment by east firms
series i_w                ' Investment by west firms
i_w.displayname Investment by west firms
series g                  ' Total government expenditure
g.displayname Total government expenditure
series x_e                ' Exports from east
x_e.displayname Exports from east
series x_w                ' Exports from west
x_w.displayname Exports from west
series im_e               ' Imports to east
im_e.displayname Imports to east
series im_w               ' Imports to west
im_w.displayname Imports to west
series y_e                ' GDP of east
y_e.displayname GDP of east
series y_w                ' GDP of west
y_w.displayname GDP of west
series y                  ' Aggregate GDP
y.displayname Aggregate GDP
series wb_e               ' Wage bill of east
wb_e.displayname Wage bill of east
series wb_w               ' Wage bill of west
wb_w.displayname Wage bill of west
series af_e               ' Depreciation of east capital
af_e.displayname Depreciation of east capital
series af_w               ' Depreciation of west capital
af_w.displayname Depreciation of west capital
series nt                 ' Net transfer from east to west (remittance)
nt.displayname Net transfer from east to west
series t_e                ' Taxes from east
t_e.displayname Taxes from east
series t_w                ' Taxes from west
t_w.displayname Taxes from west
series t                  ' Total tax revenue
t.displayname Total tax revenue
series di_e               ' Disposable income of east households
di_e.displayname Disposable income of east households
series di_w               ' Disposable income of west households
di_w.displayname Disposable income of west households
series k_t_e              ' Target capital stock for east
k_t_e.displayname Target capital stock for east
series k_t_w              ' Target capital stock for west
k_t_w.displayname Target capital stock for west
series d_l_e              ' Change in loans to east firms
d_l_e.displayname Change in loans to east firms
series d_l_w              ' Change in loans to west firms
d_l_w.displayname Change in loans to west firms
series d_b                ' Change in total bills
d_b.displayname Change in total bills
series int_l              ' Interest paid on loans
int_l.displayname Interest paid on loans
series int_d              ' Interest received on deposits
int_d.displayname Interest received on deposits

' -----------------------------------------------------------
' Initialization: Set all variables to 0 for all periods
' -----------------------------------------------------------
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

' -----------------------------------------------------------
' Set Baseline Values for Exogenous Parameters
' -----------------------------------------------------------
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
beta = 0.1
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

' -----------------------------------------------------------
' Model Definition and Equations
' -----------------------------------------------------------
model lrb

' Add behavioral and accounting equations to the model
' --- Household Consumption Equations ---
lrb.append c_e = alpha_0_e + (wb_e - nt)*(1-theta)*alpha_1_e + (r_d(-1)*m_e(-1) + r_b(-1)*b_e(-1))*(1-theta)*alpha_3_e + v_e*alpha_4_e
lrb.append c_w = alpha_0_w + (1-theta)*(alpha_1_w * wb_w + alpha_2_w * nt + alpha_3_w * (r_d(-1)*m_w(-1) + r_b(-1)*b_w(-1))) + alpha_4_w * v_w
lrb.append wb_e = y_e - r_l(-1) * l_e(-1) - af_e
lrb.append wb_w = y_w - r_l(-1) * l_w(-1) - af_w

' --- Capital and Investment Equations ---
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

' --- Trade and Transfers ---
lrb.append im_e = mu_e * y_e
lrb.append im_w = mu_w * y_w
lrb.append x_e = im_w
lrb.append x_w = im_e
lrb.append nt = (wb_e*(1-theta)* beta) * (wb_e > 0)   ' Remittance from east to west

' --- Interest Payments ---
lrb.append int_l = r_l(-1) * l_w(-1) + r_l(-1) * l_e(-1)
lrb.append int_d = r_d(-1) * m_w(-1) + r_d(-1) * m_e(-1)

' --- Government and Output ---
lrb.append y_e = c_e + i_e + g_e + x_e - im_e
lrb.append y_w = c_w + i_w + g_w + x_w - im_w
lrb.append y = y_e + y_w
lrb.append t_e = (wb_e + r_d(-1) * m_e(-1) + r_b(-1) * b_e(-1) - nt) * theta
lrb.append t_w = (wb_w + r_d(-1) * m_w(-1) + r_b(-1) * b_w(-1) + nt) * theta
lrb.append g = g_e + g_w
lrb.append t = t_e + t_w
lrb.append d_b = g + r_b(-1) * b(-1) - r_b(-1) * b_cb(-1) - r_d(-1) * m_cb(-1) - t
lrb.append b = b(-1) + d_b

' --- Portfolio Decisions and Wealth Accumulation ---
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

' -----------------------------------------------------------
' Baseline Model Solution
' -----------------------------------------------------------
smpl 1701 @last
lrb.solve

' -----------------------------------------------------------
' Scenario Analysis: Remittance and Shocks in the West
' -----------------------------------------------------------
' Scenario 1: Shock to government spending in the West with remittance
lrb.scenario(o, a="_1")  "Scenario 1"
smpl 1900 @last
' Apply negative shock to west government spending
g_w = 40
smpl @all
lrb.solve
smpl 1900 @last
' Restore west government spending
g_w = 50

' Scenario 2: Same shock, but with remittance turned off (beta = 0)
lrb.scenario(n, a="_2")  "Scenario 2"
smpl @all
beta = 0
smpl 1900 @last
g_w = 40
smpl @all
lrb.solve
smpl @all
' Restore parameters
beta = 0.1
g_w = 50

' Plot results for Scenarios 1 and 2
smpl 1850 @last
' Plot west GDP (normalized)
plot y_w_1/358.46 y_w_2/302.50
' Plot remittance
plot nt_1
' Plot east GDP (normalized)
plot y_e_1/571.28 y_e_2/650.16
' Plot aggregate GDP (normalized)
plot y_1/929.75  y_2/952.67
' -----------------------------------------------------------

' Scenario Analysis: Remittance and Shocks in the East
' -----------------------------------------------------------
' Scenario 3: Shock to government spending in the East with remittance
lrb.scenario(n, a="_3")  "Scenario 3"
smpl 1900 @last
g_e = 90
smpl @all
lrb.solve
smpl 1900 @last
g_e = 100

' Scenario 4: Same shock, but with remittance turned off (beta = 0)
lrb.scenario(n, a="_4")  "Scenario 4"
smpl @all
beta = 0
smpl 1900 @last
g_e = 90
smpl @all
lrb.solve
smpl @all
beta = 0.1
g_e = 100

' Plot results for Scenarios 3 and 4
smpl 1850 @last
plot y_w_3/358.46 y_w_4/302.50   ' West GDP
plot nt_3                        ' Remittance
plot y_e_3/571.28 y_e_4/650.16   ' East GDP
plot y_3/929.75  y_3/952.67      ' Aggregate GDP
' -----------------------------------------------------------

' Scenario Analysis: Remittance and Embargo Impact
' -----------------------------------------------------------
' Scenario 5: Embargo (imports set to zero) with remittance
lrb.scenario(n, a="_5")  "Scenario 5"
smpl 1900 @last
mu_e = 0
mu_w = 0
smpl @all
lrb.solve
smpl 1900 @last
mu_e = 0.1
mu_w = 0.2

' Scenario 6: Embargo with remittance turned off (beta = 0)
lrb.scenario(n, a="_6")  "Scenario 6"
smpl @all
beta = 0
smpl 1900 @last
mu_e = 0
mu_w = 0
smpl @all
lrb.solve
smpl @all
beta = 0.1
mu_e = 0.1
mu_w = 0.2

' Plot results for Scenarios 5 and 6
smpl 1850 @last
plot y_w_5/358.46 y_w_6/302.50   ' West GDP
plot y_e_5/571.28 y_e_6/650.16   ' East GDP
plot nt_5                        ' Remittance
plot y_5/929.75  y_6/952.67      ' Aggregate GDP
plot (x_w_5-im_w_5)/y_w_5 (x_w_6-im_w_6)/y_w_6   ' Net export for west
' -----------------------------------------------------------

' Additional Scenario: Equalize Import Propensity
smpl @all
mu_w = 0.2
mu_e = 0.2
' -----------------------------------------------------------

' Repeat Scenario Analysis with Different Baseline (for robustness)
' -----------------------------------------------------------
' Scenarios 7-12 repeat the above shocks with different normalization or parameterization
' (see above for scenario structure; comments omitted for brevity)

lrb.scenario(n, a="_7")  "Scenario 7"
smpl 1900 @last
g_w = 40
smpl @all
lrb.solve
smpl 1900 @last
g_w = 50

lrb.scenario(n, a="_8")  "Scenario 8"
smpl @all
beta = 0
smpl 1900 @last
g_w = 40
smpl @all
lrb.solve
smpl @all
beta = 0.1
g_w = 50

smpl 1850 @last
' plot west gdp
plot y_w_7/445.52 y_w_8/410.32
' plot east gdp
plot y_e_7/470.25 y_e_8/522.49
' plot aggregate gdp
plot y_7/915.78  y_8/932.81
' -----------------------------------------------------------

' Scenario does remittance amply shocks in the east? 
lrb.scenario(n, a="_9")  "Scenario 9"
smpl 1900 @last
g_e = 90
smpl @all
lrb.solve
smpl 1900 @last
g_e = 100

lrb.scenario(n, a="_10")  "Scenario 10"
smpl @all
beta = 0
smpl 1900 @last
g_e = 90
smpl @all
lrb.solve
smpl @all
beta = 0.1
g_e = 100

smpl 1850 @last
' plot west gdp
plot y_w_9/445.52 y_w_10/410.32
' plot east gdp
plot y_e_9/470.25 y_e_10/522.49
' plot aggregate gdp
plot y_9/915.78  y_10/932.81
' -----------------------------------------------------------

' Scenario: Does Remittance affect the impact of an embargo?
lrb.scenario(n, a="_11")  "Scenario 11"
smpl 1900 @last
mu_e = 0
mu_w = 0
smpl @all
lrb.solve
smpl 1900 @last
mu_e = 0.1
mu_w = 0.2

lrb.scenario(n, a="_12")  "Scenario 12"
smpl @all
beta = 0
smpl 1900 @last
mu_e = 0
mu_w = 0
smpl @all
lrb.solve
smpl @all
beta = 0.1
mu_e = 0.1
mu_w = 0.2

smpl 1850 @last
' plot west gdp
plot y_w_11/445.52 y_w_12/410.32
' plot east gdp
plot y_e_11/470.25 y_e_12/522.49
' plot aggregate gdp
plot y_11/915.78  y_12/932.81
'plot net export for west
plot (x_w_11-im_w_11)/y_w_11 (x_w_12-im_w_12)/y_w_12

' -----------------------------------------------------------

' Scenario: Does Remittance affect the impact of an embargo?
lrb.scenario(n, a="_13")  "Scenario 13"
smpl @all
mu_e = 0.2
mu_w = 0.2
alpha_2_w = 0.6
smpl 1900 @last
g_w = 40
smpl @all
lrb.solve
smpl @all
mu_e = 0.1
mu_w = 0.2
alpha_2_w = 0.9
g_w = 50

lrb.scenario(n, a="_14")  "Scenario 14"
smpl @all
mu_e = 0.2
mu_w = 0.2
alpha_2_w = 0.6
beta = 0
smpl 1900 @last
g_w = 40
smpl @all
lrb.solve
smpl @all
mu_e = 0.1
mu_w = 0.2
alpha_2_w = 0.9
g_w = 50
beta = 0.1

smpl 1850 @last
' plot west gdp
plot y_w_13/451.76 y_w_14/410.329
' plot east gdp
plot y_e_13/473.42 y_e_14/522.485
' plot aggregate gdp
plot y_13/925.18  y_14/932.815
' compare with ealier scenario
plot y_w_7/445.52  y_w_13/451.76  y_w_14/410.329

' -----------------------------------------------------------
' Scenario: Does Remittance affect the impact of an embargo?
lrb.scenario(n, a="_15")  "Scenario 15"
smpl @all
mu_e = 0.2
mu_w = 0.2
alpha_2_w = 0.6
smpl 1900 @last
mu_e = 0
mu_w = 0
smpl @all
lrb.solve
smpl @all
mu_e = 0.1
mu_w = 0.2
alpha_2_w = 0.9

lrb.scenario(n, a="_16")  "Scenario 16"
smpl @all
mu_e = 0.2
mu_w = 0.2
alpha_2_w = 0.6
beta = 0
smpl 1900 @last
mu_e = 0
mu_w = 0
smpl @all
lrb.solve
smpl @all
mu_e = 0.1
mu_w = 0.2
alpha_2_w = 0.9
beta = 0.1

smpl 1850 @last
' plot west gdp
plot y_w_15/451.76 y_w_16/410.329
' plot east gdp
plot y_e_15/473.42 y_e_16/522.485
' plot aggregate gdp
plot y_15/925.18  y_16/932.815
' compare with ealier scenario
plot y_w_11/445.52  y_w_15/451.76  y_w_16/410.329