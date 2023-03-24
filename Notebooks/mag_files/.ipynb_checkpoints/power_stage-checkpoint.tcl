#                                                ((((((((                        
#                                              ((((((((((((                       
#                                            ((((((((((((((((                     
#                                          (((((((((((((((((((                    
#                                        ((((((((((/(((((((((((                   
#     _____                            (((((((           (((((((                  
# ,((((((((((((\                     ((((((                (((((((                
#            ((((                   ((((((                   ((((((               
#              (((((              ((((((                       (((((              
#                ((((((         (((((((                          ((((             
#                 ((((((((((((((((((((                             ((((           
#                   (((((((((((((((((                                ((((         
#                     ((((((((((((((                                  *((((((.    
#                       ((((((((((                                                
#                         ((((((                                                  
                                                                                
# #####################	#
#   AC3E - UTFSM      	#
#   Project: 3LFCC    	#
#   Power stage layout	#
#   17-09-2022        	#
#	Based on Open PMIC	#
# #####################	#

drc style drc(full)

set guard_width 48
set guard_offset_x 11.25
set size 5.5
set n_nmos 36
set n_pmos 48

# NMOS 1
box 0um 0 10um 10um
getcell mag_files/nmos_waffle_36x36.mag
#box 30um 59.25um 53um 68um 
#paint metal2
box 30um 57um 49.62um 60um
paint metal2
box 30um 52um 53um 57.49um 
paint metal2

# NMOS 2
box 0um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 1}]um 10um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) + 5}]um 
getcell mag_files/nmos_waffle_36x36.mag
rotate
box 30um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 48}]um 57.4um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 32}]um
paint metal2
box 57.4um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 45.6}]um 59.3um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 32}]um
paint metal2
box 59.3um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 48}]um 68um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 32}]um
paint metal2 

#PMOS 3
box 0um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 8}]um 10um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 18}]um 
getcell mag_files/pmos_waffle_48x48.mag
upsidedown
rotate -90
box 30um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 44}]um 57.4um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 60}]um
paint metal2
box 57um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 44}]um 60um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 57.6}]um
paint metal2
box 59.3um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 44}]um 68um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 60}]um
paint metal2

#PMOS 4
box 0um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5) + 16}]um 10um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5) + 26}]um 
getcell mag_files/pmos_waffle_48x48.mag
upsidedown
box 30um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 41.4}]um 52um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 36}]um
paint metal2
box 30um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 44}]um 49.6um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 41}]um
paint metal2
box 30um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 52}]um 52um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 43.3}]um
paint metal2

#Connections
box 10um 70um 40um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 52}]um
paint {metal3 metal4 metal5}
box 40um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 41}]um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 61}]um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) + 39}]um
paint {metal3 metal4 metal5}
box 60um 10um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 11}]um 40um
paint {metal3 metal4 metal5}
box [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 41}]um 40um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 11}]um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 61}]um
paint {metal3 metal4 metal5}
box 70um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 32}]um [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 107}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 48}]um
paint {metal3 metal4 metal5}
box [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 107}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 18}]um [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 37}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 48}]um
paint {metal3 metal4 metal5}
box [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 41}]um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) + 59}]um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 11}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 2}]um
paint {metal3 metal4 metal5}
box [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 47}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 18}]um [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 17}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 318}]um
paint {metal3 metal4 metal5}
box 10um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 68}]um 40um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 56}]um
paint {metal3 metal4 metal5}
box 40um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5) - 34}]um [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 67}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5) + 56}]um
paint {metal3 metal4 metal5}
box  [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 47}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 296}]um [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 17}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 26}]um
paint {metal3 metal4 metal5}
box 60um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 26}]um [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 17}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 4}]um
paint {metal3 metal4 metal5}

#labels
box 60um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 16}]um 70um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 6}]um
label VP west metal5
box 30um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 46}]um 40um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 36}]um
label s1 west metal2
box 10um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5) + 6}]um 20um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5) + 16}]um
label fc1 west metal5
box 30um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 48}]um 40um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 58}]um
label s2 west metal2
box [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 117}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 2}]um [expr {($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 107}]um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 8}]um
label out west metal5
box 30um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 42}]um 40um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 32}]um
label s3 west metal2
box 10um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 6}]um 20um [expr {($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) + 4}]um
label fc2 west metal5
box 30um 55um 40um 60um
label s4 west metal2
box 60um 20um 70um 30um
label VN west metal5
box 26.66um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 37.16}]um 26.66um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + 37.16}]um 
label PW1
box 37.16um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 20.66}]um 37.16um [expr {(($n_nmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 + (($n_pmos-1)*$size + 2*($guard_offset_x + $guard_width) - 5)*2 - 20.66}]um 
label PW2

save mag_files/power_stage.mag

