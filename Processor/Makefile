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
	verilator --binary --trace --timing --exe --build --sv -Iinclude \
	include/core_pkg.svh \
	sim/$(mod)TB.sv src/Backend/Scheduler/$(mod).sv $(extras) --top-module $(mod)TB
	@touch .stamp.verilate

.stamp.build: obj_dir/V$(mod)TB
	obj_dir/V$(mod)TB
	@touch .stamp.build

.stamp.waves: $(mod)TB.vcd
	gtkwave $(mod)TB.vcd
	@touch .stamp.waves

.PHONY: clean
clean:
	rm -rf .stamp.*;
	rm -rf ./obj_dir
	rm -rf *.vcd
	rm -rf test_results.log
