add wave -position insertpoint  \
sim:/X3 \
sim:/X2 \
sim:/X1 \
sim:/X0 \
sim:/Y3 \
sim:/Y2 \
sim:/Y1 \
sim:/Y0 \
sim:/Control \
sim:/S3 \
sim:/S2 \
sim:/S1 \
sim:/S0 \
sim:/Cout \
sim:/Overflow
force -freeze X3 1 0
force -freeze X2 0 0
force -freeze X1 1 0
force -freeze X0 1 0
force -freeze Y3 0 0
force -freeze Y2 1 0
force -freeze Y1 1 0
force -freeze Y0 0 0
force -freeze Control 1 0
run
force -freeze X3 1 0
force -freeze X2 0 0
force -freeze X1 0 0
force -freeze X0 1 0
force -freeze Y3 0 0
force -freeze Y2 0 0
force -freeze Y1 1 0
force -freeze Y0 0 0
force -freeze Control 1 0
run
force -freeze X3 0 0
force -freeze X2 0 0
force -freeze X1 0 0
force -freeze X0 1 0
force -freeze Y3 0 0
force -freeze Y2 1 0
force -freeze Y1 1 0
force -freeze Y0 1 0
force -freeze Control 0 0
run
force -freeze X3 1 0
force -freeze X2 1 0
force -freeze X1 0 0
force -freeze X0 0 0
force -freeze Y3 0 0
force -freeze Y2 1 0
force -freeze Y1 1 0
force -freeze Y0 0 0
force -freeze Control 0 0
run
force -freeze X3 0 0
force -freeze X2 0 0
force -freeze X1 1 0
force -freeze X0 1 0
force -freeze Y3 1 0
force -freeze Y2 1 0
force -freeze Y1 0 0
force -freeze Y0 1 0
force -freeze Control 1 0
run
force -freeze X3 0 0
force -freeze X2 1 0
force -freeze X1 0 0
force -freeze X0 1 0
force -freeze Y3 1 0
force -freeze Y2 0 0
force -freeze Y1 1 0
force -freeze Y0 1 0
force -freeze Control 0 0
run