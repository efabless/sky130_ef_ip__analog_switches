#! /bin/bash
magic -dnull -noconsole -rcfile /usr/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc << EOF
load ../mag/isolated_switch_onoff
select top cell
expand
drc style drc(full)
drc on
drc check
drc catchup
drc count
set tk_version 8.5
source \${CAD_ROOT}/magic/tcl/drcmgr.tcl
#feedback save drc.log
magic::drc_save_report isolated_switch_onoff drc.log
EOF
exit 0

