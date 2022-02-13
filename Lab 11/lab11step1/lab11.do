### Clear flip flops ###

force CLRN 0
run 100

### no-count

force w 0
force PRN 1
force CLRN 1
force Clock 0 0, 1 50 -repeat 100

run 100

### count

force w 1
run 800