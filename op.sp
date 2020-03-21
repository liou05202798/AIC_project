*** Final ***
.subckt my_op vinp vinn vdd vss vop von vocm
*** Bias Circuit ***
MB1 B1 B1 vss vss n_18 w = 70u  l = 1u m = 2
MB2 B2 B1 vss vss n_18 w = 90u l = 0.8u m = 16
MB3 B2 B2 vdd vdd p_18 w = 80u l = 1u m = 10
Rb VDD B1 13.696k
*** Amplifier Circuit ***
M1 n1 vinp n2 vdd p_18  w = 80u l = 0.82u m = 1
M2 n4 vinn n2 vdd p_18  w = 80u l = 0.82u m = 1
M3 n1 F4 vss vss n_18   w = 40u l = 1u   m = 1
M4 n4 F4 vss vss n_18   w = 40u l = 1u   m = 1
M5 n2 B2 vdd vdd p_18   w = 12u l = 1u m = 3
M6 Von n4 vss vss n_18  w = 70u l = 0.6u m = 2
M7 Von B2 vdd vdd p_18  w = 50u l = 0.8u m = 2
M8 Vop n1 vss vss n_18  w = 70u l = 0.6u m = 2
M9 Vop B2 vdd vdd p_18  w = 50u l = 0.8u m = 2
*** Feedback Circuit ***
MF1 F3 vocm F5 vdd p_18 w = 80u l = 2u  m = 6 
MF2 F4 F2 F5 vdd p_18   w = 80u l = 2u  m = 6 
MF3 F3 F3 vss vss n_18  w = 40u l = 3u  m = 2  
MF4 F4 F4 vss vss n_18  w = 40u l = 3u  m = 2  
MF5 F5 B2 vdd vdd p_18  w = 20u l = 0.8u  m = 2  
*** passive component ***
RZ1 Vop rc1 0.5k 
RZ2 rc2 Von 0.5k
RCM1 Vop F2 100k
RCM2 F2 Von 100k
CC1 rc1 n1 4p
CC2 n4 rc2 4p
.ends














