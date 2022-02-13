add wave -position insertpoint  \
sim:/mux4to1/W0 \
sim:/mux4to1/W1 \
sim:/mux4to1/W2 \
sim:/mux4to1/W3 \
sim:/mux4to1/S \
sim:/mux4to1/F
force -freeze sim:/mux4to1/W2 0 0
force -freeze sim:/mux4to1/S[1] 1'h0 0
force -freeze sim:/mux4to1/S[0] 1'h0 0
force -freeze sim:/mux4to1/W1 1'h0 0
force -freeze sim:/mux4to1/W0 1'h1 0
force -freeze sim:/mux4to1/W3 1'h0 0
run
force -freeze sim:/mux4to1/W1 1'h1 0
force -freeze sim:/mux4to1/W0 1'h0 0
force -freeze sim:/mux4to1/S[0] 1'h1 0
run
force -freeze sim:/mux4to1/S[1] 1'h1 0
force -freeze sim:/mux4to1/S[0] 1'h0 0
force -freeze sim:/mux4to1/W2 1'h1 0
force -freeze sim:/mux4to1/W1 1'h0 0
run
force -freeze sim:/mux4to1/W2 1'h0 0
force -freeze sim:/mux4to1/W3 1'h1 0
force -freeze sim:/mux4to1/S[0] 1'h1 0
run