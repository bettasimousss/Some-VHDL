
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LedManipul -dir "D:/BENSI/LedManipul/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top ProgLed $srcset
set_param project.paUcfFile  "ProgLed.ucf"
set hdlfile [add_files [list {ProgLed.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files "ProgLed.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
