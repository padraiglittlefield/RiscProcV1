mod = idu
.DEFAULT_GOAL := test

.PHONY:test
test:
	rm -rf .stamp.*;
	rm -rf ./obj_dir
	make verilate mod=$(target) extras="$(extras)"
	make build mod=$(target)

.PHONY:make_view
make_view:
	rm -rf .stamp.*;
	rm -rf ./obj_dir
	make verilate mod=$(target) extras="$(extras)"
	make build mod=$(target)
	make waves mod=$(target)

.PHONY:verilate
verilate: .stamp.verilate

.PHONY:build
build: .stamp.build

.PHONY:waves 
waves: .stamp.waves

.stamp.verilate:
	verilator --binary --trace --timing --exe --build -Iinclude sim/$(mod)_tb.sv src/$(mod).sv $(extras) --top-module $(mod)_tb
	@touch .stamp.verilate

.stamp.build: obj_dir/V$(mod)_tb
	obj_dir/V$(mod)_tb
	@touch .stamp.build

.stamp.waves: $(mod)_tb.vcd
	gtkwave $(mod)_tb.vcd
	@touch .stamp.waves

.PHONY: clean
clean:
	rm -rf .stamp.*;
	rm -rf ./obj_dir
	rm -rf *.vcd
	rm -rf test_results.log
