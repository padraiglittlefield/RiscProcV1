# RiscProcV1
Out of Order Super Scaler 32-bit RISC-V processor

Running Testbenches: make make_view mod=(module relative path in src)

Directory Structure:
├── Archive
│   ├── include
│   ├── sim
│   └── src
├── Docs
│   └── RISCV_CARD.pdf
├── Processor
│   ├── Makefile
│   ├── include
│   │   └── core_pkg.svh
│   ├── sim
│   │   ├── DependencyMatrixTB.sv
│   │   ├── SelectTB.sv
│   │   ├── WakeupLogicTB.sv
│   │   └── tb_dCacheController.sv
│   └── src
│       ├── Backend
│       ├── Core.sv
│       ├── Frontend
│       ├── Interfaces
│       └── Memory
│           ├── openram-configs
│           └── openram-sram-files
│               ├── L1-cache
│               └── L2-cache
└── README.md
