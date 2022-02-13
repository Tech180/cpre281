######initializing the ff######
force PRN 1
force CLRN 0
run 10
force CLRN 1
##############################
force Enable 0
run 190

force Enable 1
force Clock 0 0, 1 25 -repeat 50
run 800