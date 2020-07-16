#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/benjamin/Repositories/PynqNet/Hardware/ip_repo/HLS_Repo/FIR16BitA/solution1/.autopilot/db/a.g.bc ${1+"$@"}
