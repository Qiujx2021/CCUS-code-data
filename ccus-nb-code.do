*use data_NB*
*main*
reg lhprice D treat post lharea age lcarea lcbarea com_green  /// 
            i.house_yearq i.ccus_id , cluster(dis_id)
		
reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id , cluster(dis_id)

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.dis_id , cluster(dis_id)
			
reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.house_yearq#i.ccus_id, cluster(dis_id)

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.dis_id i.house_yearq#i.dis_id, cluster(dis_id)

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id , cluster(dis_id)

*common trend*			
gen t = house_year - ccus_year
tab t

forvalues i=8(-1)1{
   gen pre`i' = (t==-`i' & treat==1)
}
gen current=(t== 0 & treat==1)
forvalues i=1(1)7{
  gen post`i'=(t==`i' & treat==1)
}
 

reg lhprice pre4 pre3 pre2 pre1 current post2 post3 post4 post5 post6 post7 /// 
            lharea lcbarea lcarea ntl ndvi com_green age ltax dicp  i.ccus_id#i.house_yearq

coefplot, baselevels ///
keep(pre* current post*) ///
vertical ///
coeflabels(pre4=-4 pre3=-3 pre2=-2 pre1=-1 ///
current=0 post1=1 post2=2 post3=3 post4=4 post5=5 post6=6 post7=7) /// 
yline(0,lwidth(vthin) lpattern(solid) lcolor(teal)) ///
xline(5,lwidth(vthin) lpattern(solid) lcolor(teal)) ///
ylabel(-0.5(0.1)0.5,labsize(*0.85) angle(0)) xlabel(,labsize(*0.85)) ///
xtitle("Year relative to CCUS") ///
ytitle("Changes in housing price") ///
msymbol(O) msize(small) mcolor(gs1) ///
addplot(line @b @at,lcolor(gs1) lwidth(medthick)) ///
ciopts(recast(rline) lwidth(thin) lpattern(dash) lcolor(gs2)) ///
graphregion(color(white)) /// 
legend(order(2 "Coef. Estimate" 1 "95% Confidence Interval")) 			
			

*matching*
*PSM-DID* 
global psm "lcbarea com_green com_ratio "

set seed 2020
gen norvar_1 = rnormal()
sort norvar_1
psmatch2 treat $psm i.dis_id , outcome(lhprice) logit neighbor(2) ties common ate caliper(0.05)
pstest lcbarea com_green com_ratio, both graph 
psgraph

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow  /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if _support ==1 , r


*CEM-DID*
cem ntl ndvi dicp lharea, tr(treat)
reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id [iweight = cem_weight] , r				
			
			
			
*range*
*here use data_NB_6800 for including the data between 6500 m and 6800 m*
*6200*
reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.house_yearq#i.ccus_id if dis <= 6200, r

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.dis_id i.house_yearq#i.dis_id if dis <= 6200 , r

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dis <= 6200 , r


*6800*
reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.house_yearq#i.ccus_id if dis <= 6800, r

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.dis_id i.house_yearq#i.dis_id if dis <= 6800 , r

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dis <= 6800 , r



*falsitest*

gen treat_f =0
replace treat_f =1 if dis > 3600 & dis <= 4200
gen D_f  = treat_f  * post 
reg lhprice D_f treat_f post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.house_yearq#i.ccus_id  , r

reg lhprice D_f treat_f post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.dis_id i.house_yearq#i.dis_id  , r

reg lhprice D_f treat_f post lharea age lcarea lcbarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id  , r


*light*
gen ntl2 =0
replace ntl2 =1 if ntl < 20
replace ntl2 =2 if ntl >=20 & ntl < 40
replace ntl2 =3 if ntl >=40 & ntl < 60
replace ntl2 =4 if ntl >=60 & ntl < 80
replace ntl2 =5 if ntl >=80 

reg lhprice D treat post lharea age lcbarea com_green scsd dicp  gdp_3 pow    /// 
            i.house_year i.ccus_id i.dis_id i.house_year#i.ccus_id if ntl2==1 , r		

reg lhprice D treat post lharea age lcbarea com_green scsd dicp  gdp_3 pow   /// 
            i.house_year i.ccus_id i.dis_id i.house_year#i.ccus_id if ntl2==2 , r		

reg lhprice D treat post lharea age lcbarea com_green scsd dicp  gdp_3 pow    /// 
            i.house_year i.ccus_id i.dis_id i.house_year#i.ccus_id if ntl2==3 , r		

reg lhprice D treat post lharea age lcbarea com_green scsd dicp  gdp_3 pow   /// 
            i.house_year i.ccus_id i.dis_id i.house_year#i.ccus_id if ntl2==4 , r		

reg lhprice D treat post lharea age lcbarea com_green scsd dicp  gdp_3 pow  /// 
            i.house_year i.ccus_id i.dis_id i.house_year#i.ccus_id if ntl2==5 , r	



*dicp*

xtile dicp1 = dicp, nq(8)
reg lhprice D treat post lharea age lcarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dicp1==1 , r

reg lhprice D treat post lharea age lcarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dicp1==2 , r

reg lhprice D treat post lharea age lcarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dicp1==3 , r

reg lhprice D treat post lharea age lcarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dicp1==4 , r	

reg lhprice D treat post lharea age lcarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dicp1==5 , r		

reg lhprice D treat post lharea age lcarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dicp1==6 , r

reg lhprice D treat post lharea age lcarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dicp1==7 , r

reg lhprice D treat post lharea age lcarea com_green ntl scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if dicp1==8 , r


*capacity*
gen pow2=0
replace pow2 =1 if pow >5

reg lhprice D treat post lharea age lcarea lcbarea com_green scsd dicp gdp_3 pow  /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if pow2==0

reg lhprice D treat post lharea age lcarea lcbarea com_green scsd dicp gdp_3 pow  /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if pow2==1



*mode*
gen type_c=0
replace type_c =1 if ccus_id ==4 | ccus_id ==5 | ccus_id ==9 | ccus_id == 10 |ccus_id ==11
replace type_c =2 if ccus_id ==7 | ccus_id ==8| ccus_id ==13 | ccus_id ==14
replace type_c =3 if ccus_id ==6

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl ndvi scsd dicp gdp_3 pow  /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if type_c==1 , r		

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl ndvi scsd dicp gdp_3 pow  /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if type_c==2 , r		

reg lhprice D treat post lharea age lcarea lcbarea com_green ntl ndvi scsd dicp gdp_3 pow   /// 
            i.house_yearq i.ccus_id i.dis_id i.house_yearq#i.ccus_id if type_c==3 , r		
