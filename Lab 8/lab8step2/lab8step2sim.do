add wave -position insertpoint  \
sim:/lab8step2/X0 \
sim:/lab8step2/X1 \
sim:/lab8step2/X2 \
sim:/lab8step2/X3 \
sim:/lab8step2/S \
sim:/lab8step2/X_1 \
sim:/lab8step2/X_2 \
sim:/lab8step2/X_3 \
sim:/lab8step2/F
force -freeze sim:/lab8step2/X3 1 0
force -freeze sim:/lab8step2/X2 0 0
force -freeze sim:/lab8step2/X1 0 0
force -freeze sim:/lab8step2/X0 1 0
force -freeze sim:/lab8step2/X_1 1 0
force -freeze sim:/lab8step2/X_2 1 0
force -freeze sim:/lab8step2/X_3 0 0
force -freeze sim:/lab8step2/S[1] 0 0
force -freeze sim:/lab8step2/S[0] 1 0
run
force -freeze sim:/lab8step2/X2 1 0
force -freeze sim:/lab8step2/X1 1 0
force -freeze sim:/lab8step2/X0 0 0
force -freeze sim:/lab8step2/X_1 0 0
force -freeze sim:/lab8step2/X_2 0 0
force -freeze sim:/lab8step2/S[1] 1 0
run
force -freeze sim:/lab8step2/X_2 1 0
force -freeze sim:/lab8step2/X_3 1 0
force -freeze sim:/lab8step2/S[1] 0 0
force -freeze sim:/lab8step2/S[0] 0 0
run
force -freeze sim:/lab8step2/X1 0 0
force -freeze sim:/lab8step2/X0 1 0
force -freeze sim:/lab8step2/X_3 0 0
force -freeze sim:/lab8step2/S[1] 1 0
run
force -freeze sim:/lab8step2/X2 0 0
force -freeze sim:/lab8step2/X1 1 0
force -freeze sim:/lab8step2/X_3 1 0
force -freeze sim:/lab8step2/S[1] 0 0
force -freeze sim:/lab8step2/S[0] 1 0
run
