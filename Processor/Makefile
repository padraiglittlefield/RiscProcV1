mod ?= idu
path ?= src/
extras ?=

.DEFAULT_GOAL := test

.PHONY: test
test:
	rm -rf .stamp.* ./obj_dir
	make verilate mod=$(mod) path=$(path) extras="$(extras)"
	make build mod=$(mod) path=$(path)

.PHONY: make_view
make_view:
	rm -rf .stamp.* ./obj_dir
	make verilate mod=$(mod) path=$(path) extras="$(extras)"
	make build mod=$(mod) path=$(path)
	make waves mod=$(mod) path=$(path)

.PHONY: verilate
verilate: .stamp.verilate

.PHONY: build
build: .stamp.build

.PHONY: waves
waves: .stamp.waves

.stamp.verilate:
	verilator --binary --trace --timing --exe --build --sv --assert -Iinclude \
		include/core_pkg.svh \
		sim/tb_$(mod).sv $(path)$(mod).sv $(extras) --top-module tb_$(mod)
	@touch .stamp.verilate

.stamp.build: obj_dir/Vtb_$(mod)
	obj_dir/Vtb_$(mod)
	@touch .stamp.build

.stamp.waves: tb_$(mod).vcd
	gtkwave tb_$(mod).vcd
	@touch .stamp.waves

.PHONY: clean
clean:
	rm -rf .stamp.* ./obj_dir *.vcd test_results.log
