
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Afficheur7seg -dir "D:/BENSI/Afficheur7seg/planAhead_run_1" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/BENSI/Afficheur7seg/afficheur.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/BENSI/Afficheur7seg} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "afficheur.ucf"
add_files "afficheur.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
