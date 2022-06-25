*main*
*CCUS-RE*

matrix mean = (-0.1170239, -0.0747629, -0.0741601, -0.059409, -0.0594526, -0.059409)

matrix colnames mean = model1 model2 model3 model4 model5 model6
matrix rownames mean = mean

matrix CI = (-0.2391505, -0.1469557, -0.1466212, -0.1300331, -0.1301082, -0.1300331\ ///
0.0051027, -0.00257, -0.0016989, 0.0112151, 0.011203, 0.0112151)
matrix colnames CI = model1 model2 model3 model4 model5 model6

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1) ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))

*CCUS-NB*

matrix mean = (-0.072042, -0.0719694, -0.0719694, -0.0730295, -0.0719536, -0.0730295)

matrix colnames mean = model1 model2 model3 model4 model5 model6
matrix rownames mean = mean

matrix CI = (-0.0763809, -0.0723706, -0.0723706, -0.0730295, -0.0719536, -0.0730295\ ///
-0.0677032, -0.0715683, -0.0715683, -0.0730295, -0.0719536, -0.0730295)
matrix colnames CI = model1 model2 model3 model4 model5 model6

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1)  ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))

*matching*
*CCUS-RE*

matrix mean = (-0.059409, -0.0590201, -0.0549189)

matrix colnames mean = model1 model2 model3
matrix rownames mean = mean

matrix CI = (-0.0869507, -0.0865603, -0.0888907\ ///
-0.0318674, -0.0314798, -0.0209471)
matrix colnames CI = model1 model2 model3

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1) ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))

*CCUS-NB*

matrix mean = (-0.0730295, -0.0726516, -0.0855159)

matrix colnames mean = model1 model2 model3
matrix rownames mean = mean

matrix CI = (-0.1371766, -0.1432969, -0.1670098\ ///
-0.0088824, -0.0020062, -0.004022)
matrix colnames CI = model1 model2 model3

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1)  ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))


*range*
*CCUS-RE*
matrix mean = (-0.06727, -0.06727, -0.06727, -0.0485204, -0.0497874, -0.0496578)
matrix colnames mean = model1 model2 model3 model4 model5 model6
matrix rownames mean = mean
matrix CI = (-0.0947085, -0.0947085, -0.0947085, -0.0764573, -0.0777182, -0.0775234\ ///
-0.0398315, -0.0398315, -0.0398315, -0.0205835, -0.0218566, -0.0217921)
matrix colnames CI = model1 model2 model3 model4 model5 model6
matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1) ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))

*CCUS-NB*
matrix mean = (-0.0731667, -0.0733658, -0.0731667, -0.0632075, -0.0632887, -0.0632075)
matrix colnames mean = model1 model2 model3 model4 model5 model6
matrix rownames mean = mean
matrix CI = (-0.1372656, -0.1392102, -0.1372656, -0.1269297, -0.1278052, -0.1269297\ ///
-0.0090677, -0.0075214, -0.0090677, 0.0005146, 0.0030278, 0.0005146)
matrix colnames CI = model1 model2 model3 model4 model5 model6
matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1) ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))



*falsi*
*CCUS-RE*

matrix mean = (-0.059409, 0.0025098, 0.0024821, 0.0024824)

matrix colnames mean = model1 model2 model3 model4
matrix rownames mean = mean

matrix CI = (-0.0869513, -0.0322051, -0.0322339, -0.0322344\ ///
-0.0318667, 0.0372246, 0.0371981, 0.0371992)
matrix colnames CI = model1 model2 model3 model

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1) ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))

*CCUS-NB*

matrix mean = (-0.0730295, 0.0166774, 0.0213914, 0.0166774)

matrix colnames mean = model1 model2 model3 model4
matrix rownames mean = mean

matrix CI = (-0.1371766, -0.010111, -0.0055794, -0.010111\ ///
-0.0088824, 0.0434658, 0.0483622, 0.0434658)
matrix colnames CI = model1 model2 model3 model4

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1)  ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))


*light*
*CCUS-RE*

matrix mean = (-0.031323, -0.0709102, -0.0600804, -0.2630476)

matrix colnames mean = model1 model2 model3 model4
matrix rownames mean = mean

matrix CI = (-0.0815426, -0.1128139, -0.1182519, -0.4170924\ ///
0.0188965, -0.0290064, -0.0019089, -0.1090029)
matrix colnames CI = model1 model2 model3 model4

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1) ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))

*CCUS-NB*

matrix mean = (-0.0120774, -0.0776848, -0.1404314)

matrix colnames mean = model1 model2 model3 
matrix rownames mean = mean

matrix CI = (-0.0937113, -0.1461296, -0.2265116\ ///
0.0695565, -0.0092399, -0.0543511)
matrix colnames CI = model1 model2 model3 

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1)  ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))



*dipc*
*CCUS-RE*

matrix mean = (0.0072621, 0.0593897, -0.0907248, -0.0951157, -0.0755445, -0.1065216, -0.1017639, -0.1320936)

matrix colnames mean = model1 model2 model3 model4 model5 model6 model7 model8
matrix rownames mean = mean

matrix CI = (-0.028429, -0.0184211, -0.1084987, -0.1116785, -0.0983194, -0.1297998, -0.1216571, -0.1525358\ ///
0.0429532, 0.1372005, -0.0729509, -0.0785528, -0.0527695, -0.0832433, -0.0818706, -0.1116515)
matrix colnames CI = model1 model2 model3 model4 model5 model6 model7 model8

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1)  ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))


*CCUS-NB*

matrix mean = (-0.0382425, -0.0834254, -0.0876567, -0.1619802, -0.1522442)

matrix colnames mean = model1 model2 model3 model4 model5

matrix CI = (-0.130335, -0.1272312, -0.1921161, -0.2318608, -0.2148351\ ///
 0.05385, -0.0396195, 0.0168028, -0.0920996, -0.0896533 )
matrix colnames CI = model1 model2 model3 model4 model5

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1)  ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))


*capacity*
*CCUS-RE*

matrix mean = (-0.0154546, -0.2489451)

matrix colnames mean = model1 model2
matrix rownames mean = mean

matrix CI = (-0.0545136, -0.3006574\ ///
0.0236045, -0.1972328)
matrix colnames CI = model1 model2

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1) ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))

*CCUS-NB*

matrix mean = (-0.0254222, -0.3033973)

matrix colnames mean = model1 model2
matrix rownames mean = mean

matrix CI = (-0.1121332, -0.3709827\ ///
0.612889, -0.235812)
matrix colnames CI = model1 model2

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1)  ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))



*mode*
*CCUS-RE*

matrix mean = (-0.1176899, -0.0876299, -0.039049)

matrix colnames mean = model1 model2 model3
matrix rownames mean = mean

matrix CI = (-0.2201641, -0.1209057, -0.1037303\ ///
-0.0152156, -0.054354, 0.0256322)
matrix colnames CI = model1 model2 model3

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1) ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))

*CCUS-NB*

matrix mean = (-0.2509406, -0.0155083)

matrix colnames mean = model1 model2 
matrix rownames mean = mean

matrix CI = (-0.3508805, -0.0784364\ ///
-0.1510007, 0.0474197 )
matrix colnames CI = model1 model2 

matrix rownames CI = ll95 ul95
coefplot matrix(mean), pstyle(p1)  ci(CI) vertical legend(order(2 "Estimation" 1 "95% confidence intervals"))
