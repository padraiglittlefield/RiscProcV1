* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/padraig/Tools/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/padraig/Tools/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "/tmp/openram_padraig_31642_temp/sram.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xsram_0rw1r1w_19_128_freepdk45 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 din0_16 din0_17 din0_18 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15 dout1_16 dout1_17 dout1_18 vdd gnd sram_0rw1r1w_19_128_freepdk45

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f
CD14 dout1_4  0 0.8364f
CD15 dout1_5  0 0.8364f
CD16 dout1_6  0 0.8364f
CD17 dout1_7  0 0.8364f
CD18 dout1_8  0 0.8364f
CD19 dout1_9  0 0.8364f
CD110 dout1_10  0 0.8364f
CD111 dout1_11  0 0.8364f
CD112 dout1_12  0 0.8364f
CD113 dout1_13  0 0.8364f
CD114 dout1_14  0 0.8364f
CD115 dout1_15  0 0.8364f
CD116 dout1_16  0 0.8364f
CD117 dout1_17  0 0.8364f
CD118 dout1_18  0 0.8364f


* Important signals for debug
* bl:	xsram:xbank0:bl_0_1
* br:	xsram:xbank0:br_0_1
* s_en:	xsram:s_en
* q:	xsram:xbank0:xbitcell_array:xbitcell_array:xbit_r0_c0.Q
* qbar:	xsram:xbank0:xbitcell_array:xbitcell_array:xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 0111111111111111110  to  address 1111110 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 1011111011011111111  to  address 1111110 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 0111111010111101001  to  address 1111101 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 0111111010111101001 from address 1111101 (from port 1) during cycle 4 (20ns - 25ns)
*	Reading 0111111010111101001 from address 1111101 (from port 1) during cycle 5 (25ns - 30ns)
*	Reading 1011111011011111111 from address 1111110 (from port 1) during cycle 6 (30ns - 35ns)
*	Reading 0111111010111101001 from address 1111101 (from port 1) during cycle 7 (35ns - 40ns)
*	Reading 0111111010111101001 from address 1111101 (from port 1) during cycle 8 (40ns - 45ns)
*	Writing 0011001000100110000  to  address 1111110 (from port 0) during cycle 9 (45ns - 50ns)
*	Reading 0111111010111101001 from address 1111101 (from port 1) during cycle 10 (50ns - 55ns)
*	Writing 1001110000100011001  to  address 1111101 (from port 0) during cycle 11 (55ns - 60ns)
*	Reading 0011001000100110000 from address 1111110 (from port 1) during cycle 11 (55ns - 60ns)
*	Writing 0101000011000111010  to  address 1111110 (from port 0) during cycle 12 (60ns - 65ns)
*	Reading 1001110000100011001 from address 1111101 (from port 1) during cycle 12 (60ns - 65ns)
*	Writing 0101111011011000101  to  address 1111101 (from port 0) during cycle 13 (65ns - 70ns)
*	Writing 1101011101100100110  to  address 1111110 (from port 0) during cycle 14 (70ns - 75ns)
*	Reading 0101111011011000101 from address 1111101 (from port 1) during cycle 15 (75ns - 80ns)
*	Writing 1100111010110111000  to  address 0000001 (from port 0) during cycle 16 (80ns - 85ns)
*	Writing 1100101101001110010  to  address 0000001 (from port 0) during cycle 17 (85ns - 90ns)
*	Writing 0011001000111011110  to  address 0000000 (from port 0) during cycle 22 (110ns - 115ns)
*	Writing 0001110001000001010  to  address 0000001 (from port 0) during cycle 23 (115ns - 120ns)
*	Writing 0000101010111100110  to  address 0000001 (from port 0) during cycle 24 (120ns - 125ns)
*	Reading 1101011101100100110 from address 1111110 (from port 1) during cycle 24 (120ns - 125ns)
*	Writing 0000110111011000011  to  address 1111110 (from port 0) during cycle 25 (125ns - 130ns)
*	Reading 0101111011011000101 from address 1111101 (from port 1) during cycle 25 (125ns - 130ns)
*	Reading 0011001000111011110 from address 0000000 (from port 1) during cycle 26 (130ns - 135ns)
*	Writing 0100101011111011001  to  address 0000001 (from port 0) during cycle 27 (135ns - 140ns)
*	Reading 0011001000111011110 from address 0000000 (from port 1) during cycle 27 (135ns - 140ns)
*	Reading 0101111011011000101 from address 1111101 (from port 1) during cycle 28 (140ns - 145ns)
*	Writing 1100000010001100100  to  address 0000001 (from port 0) during cycle 29 (145ns - 150ns)
*	Reading 0101111011011000101 from address 1111101 (from port 1) during cycle 29 (145ns - 150ns)
*	Writing 1101001101011101101  to  address 1111110 (from port 0) during cycle 30 (150ns - 155ns)
*	Reading 1100000010001100100 from address 0000001 (from port 1) during cycle 31 (155ns - 160ns)
*	Writing 1110000101101101100  to  address 0000000 (from port 0) during cycle 32 (160ns - 165ns)
*	Writing 0011001010111110000  to  address 0000001 (from port 0) during cycle 34 (170ns - 175ns)
*	Writing 0011011100111101011  to  address 0000001 (from port 0) during cycle 35 (175ns - 180ns)
*	Reading 1110000101101101100 from address 0000000 (from port 1) during cycle 35 (175ns - 180ns)
*	Writing 1101111110110111101  to  address 1111101 (from port 0) during cycle 36 (180ns - 185ns)
*	Reading 1101111110110111101 from address 1111101 (from port 1) during cycle 37 (185ns - 190ns)
*	Writing 0010101000101000011  to  address 0000001 (from port 0) during cycle 38 (190ns - 195ns)
*	Reading 1101111110110111101 from address 1111101 (from port 1) during cycle 38 (190ns - 195ns)
*	Reading 1101001101011101101 from address 1111110 (from port 1) during cycle 39 (195ns - 200ns)
*	Reading 1101111110110111101 from address 1111101 (from port 1) during cycle 40 (200ns - 205ns)
*	Writing 0111011011000100110  to  address 0000001 (from port 0) during cycle 41 (205ns - 210ns)
*	Reading 0111011011000100110 from address 0000001 (from port 1) during cycle 42 (210ns - 215ns)
*	Writing 0000100001010010111  to  address 1111101 (from port 0) during cycle 43 (215ns - 220ns)
*	Reading 1110000101101101100 from address 0000000 (from port 1) during cycle 43 (215ns - 220ns)
*	Reading 0000100001010010111 from address 1111101 (from port 1) during cycle 44 (220ns - 225ns)
*	Writing 1110110011100111111  to  address 1111110 (from port 0) during cycle 45 (225ns - 230ns)
*	Writing 0110100001011000101  to  address 1111101 (from port 0) during cycle 46 (230ns - 235ns)
*	Reading 1110000101101101100 from address 0000000 (from port 1) during cycle 46 (230ns - 235ns)
*	Writing 1000110101100110110  to  address 1111101 (from port 0) during cycle 47 (235ns - 240ns)
*	Reading 1110110011100111111 from address 1111110 (from port 1) during cycle 47 (235ns - 240ns)
*	Writing 0110111111110110101  to  address 0000001 (from port 0) during cycle 48 (240ns - 245ns)
*	Reading 0110111111110110101 from address 0000001 (from port 1) during cycle 49 (245ns - 250ns)
*	Reading 1110110011100111111 from address 1111110 (from port 1) during cycle 50 (250ns - 255ns)
*	Reading 1110110011100111111 from address 1111110 (from port 1) during cycle 51 (255ns - 260ns)
*	Writing 1011100011000001111  to  address 0000001 (from port 0) during cycle 52 (260ns - 265ns)
*	Writing 1111000100001111100  to  address 1111101 (from port 0) during cycle 53 (265ns - 270ns)
*	Writing 1010011001110101010  to  address 1111110 (from port 0) during cycle 54 (270ns - 275ns)
*	Reading 1111000100001111100 from address 1111101 (from port 1) during cycle 54 (270ns - 275ns)
*	Reading 1011100011000001111 from address 0000001 (from port 1) during cycle 56 (280ns - 285ns)
*	Reading 1110000101101101100 from address 0000000 (from port 1) during cycle 57 (285ns - 290ns)
*	Writing 1011011001010110101  to  address 0000001 (from port 0) during cycle 58 (290ns - 295ns)
*	Reading 1110000101101101100 from address 0000000 (from port 1) during cycle 60 (300ns - 305ns)
*	Writing 1111000110101000100  to  address 0000000 (from port 0) during cycle 61 (305ns - 310ns)
*	Writing 1100101110101000000  to  address 0000000 (from port 0) during cycle 62 (310ns - 315ns)
*	Writing 0001010111101100000  to  address 1111101 (from port 0) during cycle 66 (330ns - 335ns)
*	Reading 1010011001110101010 from address 1111110 (from port 1) during cycle 66 (330ns - 335ns)
*	Reading 1100101110101000000 from address 0000000 (from port 1) during cycle 67 (335ns - 340ns)
*	Reading 0001010111101100000 from address 1111101 (from port 1) during cycle 68 (340ns - 345ns)
*	Reading 1010011001110101010 from address 1111110 (from port 1) during cycle 70 (350ns - 355ns)
*	Reading 1010011001110101010 from address 1111110 (from port 1) during cycle 71 (355ns - 360ns)
*	Writing 0011010011000100000  to  address 1111110 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 1100101110101000000 from address 0000000 (from port 1) during cycle 72 (360ns - 365ns)
*	Writing 1010100101010011010  to  address 0000000 (from port 0) during cycle 74 (370ns - 375ns)
*	Reading 1011011001010110101 from address 0000001 (from port 1) during cycle 74 (370ns - 375ns)
*	Writing 0000110001111010011  to  address 1111101 (from port 0) during cycle 75 (375ns - 380ns)
*	Writing 0111001000000111010  to  address 0000001 (from port 0) during cycle 78 (390ns - 395ns)
*	Reading 0011010011000100000 from address 1111110 (from port 1) during cycle 78 (390ns - 395ns)
*	Writing 0011110101101010111  to  address 1111110 (from port 0) during cycle 79 (395ns - 400ns)
*	Writing 1110100101110010000  to  address 0000000 (from port 0) during cycle 81 (405ns - 410ns)
*	Reading 1110100101110010000 from address 0000000 (from port 1) during cycle 82 (410ns - 415ns)
*	Writing 0111100101111010111  to  address 1111101 (from port 0) during cycle 83 (415ns - 420ns)
*	Reading 0111100101111010111 from address 1111101 (from port 1) during cycle 84 (420ns - 425ns)
*	Writing 0111011000111110000  to  address 1111110 (from port 0) during cycle 86 (430ns - 435ns)
*	Reading 0111001000000111010 from address 0000001 (from port 1) during cycle 86 (430ns - 435ns)
*	Writing 1011101000110110001  to  address 1111110 (from port 0) during cycle 87 (435ns - 440ns)
*	Reading 0111001000000111010 from address 0000001 (from port 1) during cycle 87 (435ns - 440ns)
*	Writing 1011000000111111011  to  address 1111101 (from port 0) during cycle 88 (440ns - 445ns)
*	Reading 1011101000110110001 from address 1111110 (from port 1) during cycle 90 (450ns - 455ns)
*	Writing 1011100011101001010  to  address 1111110 (from port 0) during cycle 91 (455ns - 460ns)
*	Reading 1011000000111111011 from address 1111101 (from port 1) during cycle 91 (455ns - 460ns)
*	Reading 1110100101110010000 from address 0000000 (from port 1) during cycle 92 (460ns - 465ns)
*	Writing 1110101000101011100  to  address 0000000 (from port 0) during cycle 93 (465ns - 470ns)
*	Writing 1001111111000000111  to  address 0000000 (from port 0) during cycle 94 (470ns - 475ns)
*	Writing 1111010110011101111  to  address 1111101 (from port 0) during cycle 95 (475ns - 480ns)
*	Writing 0011011010001000110  to  address 1111110 (from port 0) during cycle 96 (480ns - 485ns)
*	Reading 0011011010001000110 from address 1111110 (from port 1) during cycle 97 (485ns - 490ns)
*	Writing 0001000001111100000  to  address 0000000 (from port 0) during cycle 98 (490ns - 495ns)
*	Reading 0011011010001000110 from address 1111110 (from port 1) during cycle 99 (495ns - 500ns)
*	Writing 0001100110001001000  to  address 0000001 (from port 0) during cycle 100 (500ns - 505ns)
*	Writing 0110101111010011000  to  address 0000000 (from port 0) during cycle 102 (510ns - 515ns)
*	Reading 0110101111010011000 from address 0000000 (from port 1) during cycle 103 (515ns - 520ns)
*	Reading 0001100110001001000 from address 0000001 (from port 1) during cycle 104 (520ns - 525ns)
*	Writing 0101001011100010011  to  address 0000001 (from port 0) during cycle 105 (525ns - 530ns)
*	Writing 1000111000001111100  to  address 0000001 (from port 0) during cycle 107 (535ns - 540ns)
*	Writing 1000001111111011101  to  address 0000000 (from port 0) during cycle 108 (540ns - 545ns)
*	Reading 1111010110011101111 from address 1111101 (from port 1) during cycle 108 (540ns - 545ns)
*	Reading 1000001111111011101 from address 0000000 (from port 1) during cycle 110 (550ns - 555ns)
*	Reading 1111010110011101111 from address 1111101 (from port 1) during cycle 111 (555ns - 560ns)
*	Writing 0010100011001111001  to  address 0000000 (from port 0) during cycle 112 (560ns - 565ns)
*	Writing 1011111111000000000  to  address 1111101 (from port 0) during cycle 113 (565ns - 570ns)
*	Reading 0011011010001000110 from address 1111110 (from port 1) during cycle 113 (565ns - 570ns)
*	Writing 0100100101011001110  to  address 0000001 (from port 0) during cycle 114 (570ns - 575ns)
*	Reading 1011111111000000000 from address 1111101 (from port 1) during cycle 114 (570ns - 575ns)
*	Writing 0000100111010011001  to  address 1111110 (from port 0) during cycle 115 (575ns - 580ns)
*	Reading 0100100101011001110 from address 0000001 (from port 1) during cycle 115 (575ns - 580ns)
*	Writing 1011011011011001101  to  address 1111110 (from port 0) during cycle 116 (580ns - 585ns)
*	Reading 0010100011001111001 from address 0000000 (from port 1) during cycle 116 (580ns - 585ns)
*	Reading 1011111111000000000 from address 1111101 (from port 1) during cycle 117 (585ns - 590ns)
*	Writing 1100000001100111010  to  address 0000000 (from port 0) during cycle 118 (590ns - 595ns)
*	Reading 0100100101011001110 from address 0000001 (from port 1) during cycle 118 (590ns - 595ns)
*	Writing 1101011010100100101  to  address 0000001 (from port 0) during cycle 119 (595ns - 600ns)
*	Reading 1011111111000000000 from address 1111101 (from port 1) during cycle 119 (595ns - 600ns)
*	Writing 1110111010110110010  to  address 1111101 (from port 0) during cycle 120 (600ns - 605ns)
*	Reading 1101011010100100101 from address 0000001 (from port 1) during cycle 120 (600ns - 605ns)
*	Reading 1101011010100100101 from address 0000001 (from port 1) during cycle 121 (605ns - 610ns)
*	Reading 1101011010100100101 from address 0000001 (from port 1) during cycle 122 (610ns - 615ns)
*	Writing 0110011001000000010  to  address 1111101 (from port 0) during cycle 123 (615ns - 620ns)
*	Reading 1100000001100111010 from address 0000000 (from port 1) during cycle 123 (615ns - 620ns)
*	Reading 1011011011011001101 from address 1111110 (from port 1) during cycle 124 (620ns - 625ns)
*	Reading 1101011010100100101 from address 0000001 (from port 1) during cycle 125 (625ns - 630ns)
*	Writing 1001000101110101001  to  address 1111101 (from port 0) during cycle 126 (630ns - 635ns)
*	Writing 1010100001111110000  to  address 0000001 (from port 0) during cycle 127 (635ns - 640ns)
*	Reading 1011011011011001101 from address 1111110 (from port 1) during cycle 127 (635ns - 640ns)
*	Reading 1011011011011001101 from address 1111110 (from port 1) during cycle 130 (650ns - 655ns)
*	Writing 0011000111111100000  to  address 0000001 (from port 0) during cycle 131 (655ns - 660ns)
*	Reading 1001000101110101001 from address 1111101 (from port 1) during cycle 131 (655ns - 660ns)
*	Writing 0111001110110100011  to  address 0000001 (from port 0) during cycle 132 (660ns - 665ns)
*	Reading 1001000101110101001 from address 1111101 (from port 1) during cycle 134 (670ns - 675ns)
*	Writing 0011110011001001000  to  address 1111101 (from port 0) during cycle 135 (675ns - 680ns)
*	Reading 1100000001100111010 from address 0000000 (from port 1) during cycle 135 (675ns - 680ns)
*	Writing 1011101010111000111  to  address 0000000 (from port 0) during cycle 136 (680ns - 685ns)
*	Writing 1011000111001001001  to  address 0000000 (from port 0) during cycle 137 (685ns - 690ns)
*	Reading 0111001110110100011 from address 0000001 (from port 1) during cycle 137 (685ns - 690ns)
*	Writing 0000100111111100111  to  address 1111101 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 0111001110110100011 from address 0000001 (from port 1) during cycle 141 (705ns - 710ns)
*	Writing 1011100010000011000  to  address 0000001 (from port 0) during cycle 142 (710ns - 715ns)
*	Reading 0000100111111100111 from address 1111101 (from port 1) during cycle 143 (715ns - 720ns)
*	Reading 1011000111001001001 from address 0000000 (from port 1) during cycle 144 (720ns - 725ns)
*	Writing 1111101011110000101  to  address 1111110 (from port 0) during cycle 145 (725ns - 730ns)
*	Reading 1011100010000011000 from address 0000001 (from port 1) during cycle 146 (730ns - 735ns)
*	Writing 1110011101000000100  to  address 1111101 (from port 0) during cycle 147 (735ns - 740ns)
*	Writing 1111001111011101000  to  address 0000001 (from port 0) during cycle 148 (740ns - 745ns)
*	Writing 0011000000010001100  to  address 1111110 (from port 0) during cycle 149 (745ns - 750ns)
*	Writing 1000010101001111001  to  address 1111110 (from port 0) during cycle 150 (750ns - 755ns)
*	Reading 1110011101000000100 from address 1111101 (from port 1) during cycle 150 (750ns - 755ns)
*	Reading 1111001111011101000 from address 0000001 (from port 1) during cycle 152 (760ns - 765ns)
*	Writing 0010110101111101100  to  address 0000001 (from port 0) during cycle 153 (765ns - 770ns)
*	Reading 1110011101000000100 from address 1111101 (from port 1) during cycle 153 (765ns - 770ns)
*	Writing 1111111111110100111  to  address 0000000 (from port 0) during cycle 154 (770ns - 775ns)
*	Reading 1110011101000000100 from address 1111101 (from port 1) during cycle 154 (770ns - 775ns)
*	Writing 1001100011101110101  to  address 1111110 (from port 0) during cycle 155 (775ns - 780ns)
*	Writing 1000101110000111001  to  address 1111110 (from port 0) during cycle 156 (780ns - 785ns)
*	Writing 1000000001111111100  to  address 1111110 (from port 0) during cycle 157 (785ns - 790ns)
*	Writing 0110000011101001100  to  address 0000001 (from port 0) during cycle 159 (795ns - 800ns)
*	Writing 1001111010111010010  to  address 0000001 (from port 0) during cycle 161 (805ns - 810ns)
*	Reading 1110011101000000100 from address 1111101 (from port 1) during cycle 161 (805ns - 810ns)
*	Writing 0001111101011010100  to  address 0000000 (from port 0) during cycle 164 (820ns - 825ns)
*	Reading 1110011101000000100 from address 1111101 (from port 1) during cycle 164 (820ns - 825ns)
*	Writing 0010011010100011001  to  address 1111101 (from port 0) during cycle 165 (825ns - 830ns)
*	Reading 1001111010111010010 from address 0000001 (from port 1) during cycle 166 (830ns - 835ns)
*	Writing 1110000111100100010  to  address 0000000 (from port 0) during cycle 173 (865ns - 870ns)
*	Reading 1001111010111010010 from address 0000001 (from port 1) during cycle 173 (865ns - 870ns)
*	Writing 0111011100011000011  to  address 1111110 (from port 0) during cycle 174 (870ns - 875ns)
*	Writing 0010010110000001010  to  address 1111110 (from port 0) during cycle 179 (895ns - 900ns)
*	Writing 0010101011001110001  to  address 0000000 (from port 0) during cycle 180 (900ns - 905ns)
*	Reading 1001111010111010010 from address 0000001 (from port 1) during cycle 180 (900ns - 905ns)
*	Reading 1001111010111010010 from address 0000001 (from port 1) during cycle 181 (905ns - 910ns)
*	Writing 1101101010101001100  to  address 1111110 (from port 0) during cycle 183 (915ns - 920ns)
*	Reading 1001111010111010010 from address 0000001 (from port 1) during cycle 183 (915ns - 920ns)
*	Writing 1000100000001000010  to  address 1111101 (from port 0) during cycle 184 (920ns - 925ns)
*	Writing 0001101000000000110  to  address 1111101 (from port 0) during cycle 186 (930ns - 935ns)
*	Reading 0010101011001110001 from address 0000000 (from port 1) during cycle 186 (930ns - 935ns)
*	Writing 0001101101101101110  to  address 0000001 (from port 0) during cycle 187 (935ns - 940ns)
*	Writing 0100001001001000110  to  address 1111110 (from port 0) during cycle 188 (940ns - 945ns)
*	Writing 0101001011101000001  to  address 0000000 (from port 0) during cycle 190 (950ns - 955ns)
*	Reading 0001101101101101110 from address 0000001 (from port 1) during cycle 191 (955ns - 960ns)
*	Reading 0001101101101101110 from address 0000001 (from port 1) during cycle 193 (965ns - 970ns)
*	Writing 1101010110011001111  to  address 0000000 (from port 0) during cycle 194 (970ns - 975ns)
*	Reading 0001101000000000110 from address 1111101 (from port 1) during cycle 194 (970ns - 975ns)
*	Writing 0100001111001111011  to  address 1111101 (from port 0) during cycle 195 (975ns - 980ns)
*	Reading 1101010110011001111 from address 0000000 (from port 1) during cycle 197 (985ns - 990ns)
*	Writing 0111110110000010110  to  address 1111110 (from port 0) during cycle 199 (995ns - 1000ns)
*	Writing 0001100010001100110  to  address 0000001 (from port 0) during cycle 200 (1000ns - 1005ns)
*	Reading 0111110110000010110 from address 1111110 (from port 1) during cycle 200 (1000ns - 1005ns)
*	Reading 0111110110000010110 from address 1111110 (from port 1) during cycle 202 (1010ns - 1015ns)
*	Writing 0000011100111100001  to  address 0000001 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Reading 1101010110011001111 from address 0000000 (from port 1) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 0), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 1), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 1), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 0), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 0), (470, 1), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 1), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_13  din0_13  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 1), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_14  din0_14  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_15  din0_15  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 1), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_16  din0_16  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 1), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 0), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_17  din0_17  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_18  din0_18  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 1), (65, 0), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 0), (150, 0), (155, 1), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 1), (190, 0), (195, 1), (200, 1), (205, 0), (210, 1), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 0), (295, 1), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 1), (370, 0), (375, 0), (380, 1), (385, 1), (390, 0), (395, 0), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 1), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 0), (530, 1), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 1), (695, 1), (700, 0), (705, 1), (710, 0), (715, 1), (720, 1), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 1), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 1), (165, 1), (170, 1), (175, 0), (180, 1), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 1), (295, 1), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 1), (685, 0), (690, 1), (695, 1), (700, 1), (705, 0), (710, 1), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 1), (815, 1), (820, 0), (825, 1), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 0), (920, 1), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 1), (965, 0), (970, 0), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 0), (1015, 1), (1020, 0), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 vdout1_0ck4 = 1.0 time = 25
* CHECK dout1_1 vdout1_1ck4 = 0 time = 25
* CHECK dout1_2 vdout1_2ck4 = 0 time = 25
* CHECK dout1_3 vdout1_3ck4 = 1.0 time = 25
* CHECK dout1_4 vdout1_4ck4 = 0 time = 25
* CHECK dout1_5 vdout1_5ck4 = 1.0 time = 25
* CHECK dout1_6 vdout1_6ck4 = 1.0 time = 25
* CHECK dout1_7 vdout1_7ck4 = 1.0 time = 25
* CHECK dout1_8 vdout1_8ck4 = 1.0 time = 25
* CHECK dout1_9 vdout1_9ck4 = 0 time = 25
* CHECK dout1_10 vdout1_10ck4 = 1.0 time = 25
* CHECK dout1_11 vdout1_11ck4 = 0 time = 25
* CHECK dout1_12 vdout1_12ck4 = 1.0 time = 25
* CHECK dout1_13 vdout1_13ck4 = 1.0 time = 25
* CHECK dout1_14 vdout1_14ck4 = 1.0 time = 25
* CHECK dout1_15 vdout1_15ck4 = 1.0 time = 25
* CHECK dout1_16 vdout1_16ck4 = 1.0 time = 25
* CHECK dout1_17 vdout1_17ck4 = 1.0 time = 25
* CHECK dout1_18 vdout1_18ck4 = 0 time = 25
* CHECK dout1_0 vdout1_0ck5 = 1.0 time = 30
* CHECK dout1_1 vdout1_1ck5 = 0 time = 30
* CHECK dout1_2 vdout1_2ck5 = 0 time = 30
* CHECK dout1_3 vdout1_3ck5 = 1.0 time = 30
* CHECK dout1_4 vdout1_4ck5 = 0 time = 30
* CHECK dout1_5 vdout1_5ck5 = 1.0 time = 30
* CHECK dout1_6 vdout1_6ck5 = 1.0 time = 30
* CHECK dout1_7 vdout1_7ck5 = 1.0 time = 30
* CHECK dout1_8 vdout1_8ck5 = 1.0 time = 30
* CHECK dout1_9 vdout1_9ck5 = 0 time = 30
* CHECK dout1_10 vdout1_10ck5 = 1.0 time = 30
* CHECK dout1_11 vdout1_11ck5 = 0 time = 30
* CHECK dout1_12 vdout1_12ck5 = 1.0 time = 30
* CHECK dout1_13 vdout1_13ck5 = 1.0 time = 30
* CHECK dout1_14 vdout1_14ck5 = 1.0 time = 30
* CHECK dout1_15 vdout1_15ck5 = 1.0 time = 30
* CHECK dout1_16 vdout1_16ck5 = 1.0 time = 30
* CHECK dout1_17 vdout1_17ck5 = 1.0 time = 30
* CHECK dout1_18 vdout1_18ck5 = 0 time = 30
* CHECK dout1_0 vdout1_0ck6 = 1.0 time = 35
* CHECK dout1_1 vdout1_1ck6 = 1.0 time = 35
* CHECK dout1_2 vdout1_2ck6 = 1.0 time = 35
* CHECK dout1_3 vdout1_3ck6 = 1.0 time = 35
* CHECK dout1_4 vdout1_4ck6 = 1.0 time = 35
* CHECK dout1_5 vdout1_5ck6 = 1.0 time = 35
* CHECK dout1_6 vdout1_6ck6 = 1.0 time = 35
* CHECK dout1_7 vdout1_7ck6 = 1.0 time = 35
* CHECK dout1_8 vdout1_8ck6 = 0 time = 35
* CHECK dout1_9 vdout1_9ck6 = 1.0 time = 35
* CHECK dout1_10 vdout1_10ck6 = 1.0 time = 35
* CHECK dout1_11 vdout1_11ck6 = 0 time = 35
* CHECK dout1_12 vdout1_12ck6 = 1.0 time = 35
* CHECK dout1_13 vdout1_13ck6 = 1.0 time = 35
* CHECK dout1_14 vdout1_14ck6 = 1.0 time = 35
* CHECK dout1_15 vdout1_15ck6 = 1.0 time = 35
* CHECK dout1_16 vdout1_16ck6 = 1.0 time = 35
* CHECK dout1_17 vdout1_17ck6 = 0 time = 35
* CHECK dout1_18 vdout1_18ck6 = 1.0 time = 35
* CHECK dout1_0 vdout1_0ck7 = 1.0 time = 40
* CHECK dout1_1 vdout1_1ck7 = 0 time = 40
* CHECK dout1_2 vdout1_2ck7 = 0 time = 40
* CHECK dout1_3 vdout1_3ck7 = 1.0 time = 40
* CHECK dout1_4 vdout1_4ck7 = 0 time = 40
* CHECK dout1_5 vdout1_5ck7 = 1.0 time = 40
* CHECK dout1_6 vdout1_6ck7 = 1.0 time = 40
* CHECK dout1_7 vdout1_7ck7 = 1.0 time = 40
* CHECK dout1_8 vdout1_8ck7 = 1.0 time = 40
* CHECK dout1_9 vdout1_9ck7 = 0 time = 40
* CHECK dout1_10 vdout1_10ck7 = 1.0 time = 40
* CHECK dout1_11 vdout1_11ck7 = 0 time = 40
* CHECK dout1_12 vdout1_12ck7 = 1.0 time = 40
* CHECK dout1_13 vdout1_13ck7 = 1.0 time = 40
* CHECK dout1_14 vdout1_14ck7 = 1.0 time = 40
* CHECK dout1_15 vdout1_15ck7 = 1.0 time = 40
* CHECK dout1_16 vdout1_16ck7 = 1.0 time = 40
* CHECK dout1_17 vdout1_17ck7 = 1.0 time = 40
* CHECK dout1_18 vdout1_18ck7 = 0 time = 40
* CHECK dout1_0 vdout1_0ck8 = 1.0 time = 45
* CHECK dout1_1 vdout1_1ck8 = 0 time = 45
* CHECK dout1_2 vdout1_2ck8 = 0 time = 45
* CHECK dout1_3 vdout1_3ck8 = 1.0 time = 45
* CHECK dout1_4 vdout1_4ck8 = 0 time = 45
* CHECK dout1_5 vdout1_5ck8 = 1.0 time = 45
* CHECK dout1_6 vdout1_6ck8 = 1.0 time = 45
* CHECK dout1_7 vdout1_7ck8 = 1.0 time = 45
* CHECK dout1_8 vdout1_8ck8 = 1.0 time = 45
* CHECK dout1_9 vdout1_9ck8 = 0 time = 45
* CHECK dout1_10 vdout1_10ck8 = 1.0 time = 45
* CHECK dout1_11 vdout1_11ck8 = 0 time = 45
* CHECK dout1_12 vdout1_12ck8 = 1.0 time = 45
* CHECK dout1_13 vdout1_13ck8 = 1.0 time = 45
* CHECK dout1_14 vdout1_14ck8 = 1.0 time = 45
* CHECK dout1_15 vdout1_15ck8 = 1.0 time = 45
* CHECK dout1_16 vdout1_16ck8 = 1.0 time = 45
* CHECK dout1_17 vdout1_17ck8 = 1.0 time = 45
* CHECK dout1_18 vdout1_18ck8 = 0 time = 45
* CHECK dout1_0 vdout1_0ck10 = 1.0 time = 55
* CHECK dout1_1 vdout1_1ck10 = 0 time = 55
* CHECK dout1_2 vdout1_2ck10 = 0 time = 55
* CHECK dout1_3 vdout1_3ck10 = 1.0 time = 55
* CHECK dout1_4 vdout1_4ck10 = 0 time = 55
* CHECK dout1_5 vdout1_5ck10 = 1.0 time = 55
* CHECK dout1_6 vdout1_6ck10 = 1.0 time = 55
* CHECK dout1_7 vdout1_7ck10 = 1.0 time = 55
* CHECK dout1_8 vdout1_8ck10 = 1.0 time = 55
* CHECK dout1_9 vdout1_9ck10 = 0 time = 55
* CHECK dout1_10 vdout1_10ck10 = 1.0 time = 55
* CHECK dout1_11 vdout1_11ck10 = 0 time = 55
* CHECK dout1_12 vdout1_12ck10 = 1.0 time = 55
* CHECK dout1_13 vdout1_13ck10 = 1.0 time = 55
* CHECK dout1_14 vdout1_14ck10 = 1.0 time = 55
* CHECK dout1_15 vdout1_15ck10 = 1.0 time = 55
* CHECK dout1_16 vdout1_16ck10 = 1.0 time = 55
* CHECK dout1_17 vdout1_17ck10 = 1.0 time = 55
* CHECK dout1_18 vdout1_18ck10 = 0 time = 55
* CHECK dout1_0 vdout1_0ck11 = 0 time = 60
* CHECK dout1_1 vdout1_1ck11 = 0 time = 60
* CHECK dout1_2 vdout1_2ck11 = 0 time = 60
* CHECK dout1_3 vdout1_3ck11 = 0 time = 60
* CHECK dout1_4 vdout1_4ck11 = 1.0 time = 60
* CHECK dout1_5 vdout1_5ck11 = 1.0 time = 60
* CHECK dout1_6 vdout1_6ck11 = 0 time = 60
* CHECK dout1_7 vdout1_7ck11 = 0 time = 60
* CHECK dout1_8 vdout1_8ck11 = 1.0 time = 60
* CHECK dout1_9 vdout1_9ck11 = 0 time = 60
* CHECK dout1_10 vdout1_10ck11 = 0 time = 60
* CHECK dout1_11 vdout1_11ck11 = 0 time = 60
* CHECK dout1_12 vdout1_12ck11 = 1.0 time = 60
* CHECK dout1_13 vdout1_13ck11 = 0 time = 60
* CHECK dout1_14 vdout1_14ck11 = 0 time = 60
* CHECK dout1_15 vdout1_15ck11 = 1.0 time = 60
* CHECK dout1_16 vdout1_16ck11 = 1.0 time = 60
* CHECK dout1_17 vdout1_17ck11 = 0 time = 60
* CHECK dout1_18 vdout1_18ck11 = 0 time = 60
* CHECK dout1_0 vdout1_0ck12 = 1.0 time = 65
* CHECK dout1_1 vdout1_1ck12 = 0 time = 65
* CHECK dout1_2 vdout1_2ck12 = 0 time = 65
* CHECK dout1_3 vdout1_3ck12 = 1.0 time = 65
* CHECK dout1_4 vdout1_4ck12 = 1.0 time = 65
* CHECK dout1_5 vdout1_5ck12 = 0 time = 65
* CHECK dout1_6 vdout1_6ck12 = 0 time = 65
* CHECK dout1_7 vdout1_7ck12 = 0 time = 65
* CHECK dout1_8 vdout1_8ck12 = 1.0 time = 65
* CHECK dout1_9 vdout1_9ck12 = 0 time = 65
* CHECK dout1_10 vdout1_10ck12 = 0 time = 65
* CHECK dout1_11 vdout1_11ck12 = 0 time = 65
* CHECK dout1_12 vdout1_12ck12 = 0 time = 65
* CHECK dout1_13 vdout1_13ck12 = 1.0 time = 65
* CHECK dout1_14 vdout1_14ck12 = 1.0 time = 65
* CHECK dout1_15 vdout1_15ck12 = 1.0 time = 65
* CHECK dout1_16 vdout1_16ck12 = 0 time = 65
* CHECK dout1_17 vdout1_17ck12 = 0 time = 65
* CHECK dout1_18 vdout1_18ck12 = 1.0 time = 65
* CHECK dout1_0 vdout1_0ck15 = 1.0 time = 80
* CHECK dout1_1 vdout1_1ck15 = 0 time = 80
* CHECK dout1_2 vdout1_2ck15 = 1.0 time = 80
* CHECK dout1_3 vdout1_3ck15 = 0 time = 80
* CHECK dout1_4 vdout1_4ck15 = 0 time = 80
* CHECK dout1_5 vdout1_5ck15 = 0 time = 80
* CHECK dout1_6 vdout1_6ck15 = 1.0 time = 80
* CHECK dout1_7 vdout1_7ck15 = 1.0 time = 80
* CHECK dout1_8 vdout1_8ck15 = 0 time = 80
* CHECK dout1_9 vdout1_9ck15 = 1.0 time = 80
* CHECK dout1_10 vdout1_10ck15 = 1.0 time = 80
* CHECK dout1_11 vdout1_11ck15 = 0 time = 80
* CHECK dout1_12 vdout1_12ck15 = 1.0 time = 80
* CHECK dout1_13 vdout1_13ck15 = 1.0 time = 80
* CHECK dout1_14 vdout1_14ck15 = 1.0 time = 80
* CHECK dout1_15 vdout1_15ck15 = 1.0 time = 80
* CHECK dout1_16 vdout1_16ck15 = 0 time = 80
* CHECK dout1_17 vdout1_17ck15 = 1.0 time = 80
* CHECK dout1_18 vdout1_18ck15 = 0 time = 80
* CHECK dout1_0 vdout1_0ck24 = 0 time = 125
* CHECK dout1_1 vdout1_1ck24 = 1.0 time = 125
* CHECK dout1_2 vdout1_2ck24 = 1.0 time = 125
* CHECK dout1_3 vdout1_3ck24 = 0 time = 125
* CHECK dout1_4 vdout1_4ck24 = 0 time = 125
* CHECK dout1_5 vdout1_5ck24 = 1.0 time = 125
* CHECK dout1_6 vdout1_6ck24 = 0 time = 125
* CHECK dout1_7 vdout1_7ck24 = 0 time = 125
* CHECK dout1_8 vdout1_8ck24 = 1.0 time = 125
* CHECK dout1_9 vdout1_9ck24 = 1.0 time = 125
* CHECK dout1_10 vdout1_10ck24 = 0 time = 125
* CHECK dout1_11 vdout1_11ck24 = 1.0 time = 125
* CHECK dout1_12 vdout1_12ck24 = 1.0 time = 125
* CHECK dout1_13 vdout1_13ck24 = 1.0 time = 125
* CHECK dout1_14 vdout1_14ck24 = 0 time = 125
* CHECK dout1_15 vdout1_15ck24 = 1.0 time = 125
* CHECK dout1_16 vdout1_16ck24 = 0 time = 125
* CHECK dout1_17 vdout1_17ck24 = 1.0 time = 125
* CHECK dout1_18 vdout1_18ck24 = 1.0 time = 125
* CHECK dout1_0 vdout1_0ck25 = 1.0 time = 130
* CHECK dout1_1 vdout1_1ck25 = 0 time = 130
* CHECK dout1_2 vdout1_2ck25 = 1.0 time = 130
* CHECK dout1_3 vdout1_3ck25 = 0 time = 130
* CHECK dout1_4 vdout1_4ck25 = 0 time = 130
* CHECK dout1_5 vdout1_5ck25 = 0 time = 130
* CHECK dout1_6 vdout1_6ck25 = 1.0 time = 130
* CHECK dout1_7 vdout1_7ck25 = 1.0 time = 130
* CHECK dout1_8 vdout1_8ck25 = 0 time = 130
* CHECK dout1_9 vdout1_9ck25 = 1.0 time = 130
* CHECK dout1_10 vdout1_10ck25 = 1.0 time = 130
* CHECK dout1_11 vdout1_11ck25 = 0 time = 130
* CHECK dout1_12 vdout1_12ck25 = 1.0 time = 130
* CHECK dout1_13 vdout1_13ck25 = 1.0 time = 130
* CHECK dout1_14 vdout1_14ck25 = 1.0 time = 130
* CHECK dout1_15 vdout1_15ck25 = 1.0 time = 130
* CHECK dout1_16 vdout1_16ck25 = 0 time = 130
* CHECK dout1_17 vdout1_17ck25 = 1.0 time = 130
* CHECK dout1_18 vdout1_18ck25 = 0 time = 130
* CHECK dout1_0 vdout1_0ck26 = 0 time = 135
* CHECK dout1_1 vdout1_1ck26 = 1.0 time = 135
* CHECK dout1_2 vdout1_2ck26 = 1.0 time = 135
* CHECK dout1_3 vdout1_3ck26 = 1.0 time = 135
* CHECK dout1_4 vdout1_4ck26 = 1.0 time = 135
* CHECK dout1_5 vdout1_5ck26 = 0 time = 135
* CHECK dout1_6 vdout1_6ck26 = 1.0 time = 135
* CHECK dout1_7 vdout1_7ck26 = 1.0 time = 135
* CHECK dout1_8 vdout1_8ck26 = 1.0 time = 135
* CHECK dout1_9 vdout1_9ck26 = 0 time = 135
* CHECK dout1_10 vdout1_10ck26 = 0 time = 135
* CHECK dout1_11 vdout1_11ck26 = 0 time = 135
* CHECK dout1_12 vdout1_12ck26 = 1.0 time = 135
* CHECK dout1_13 vdout1_13ck26 = 0 time = 135
* CHECK dout1_14 vdout1_14ck26 = 0 time = 135
* CHECK dout1_15 vdout1_15ck26 = 1.0 time = 135
* CHECK dout1_16 vdout1_16ck26 = 1.0 time = 135
* CHECK dout1_17 vdout1_17ck26 = 0 time = 135
* CHECK dout1_18 vdout1_18ck26 = 0 time = 135
* CHECK dout1_0 vdout1_0ck27 = 0 time = 140
* CHECK dout1_1 vdout1_1ck27 = 1.0 time = 140
* CHECK dout1_2 vdout1_2ck27 = 1.0 time = 140
* CHECK dout1_3 vdout1_3ck27 = 1.0 time = 140
* CHECK dout1_4 vdout1_4ck27 = 1.0 time = 140
* CHECK dout1_5 vdout1_5ck27 = 0 time = 140
* CHECK dout1_6 vdout1_6ck27 = 1.0 time = 140
* CHECK dout1_7 vdout1_7ck27 = 1.0 time = 140
* CHECK dout1_8 vdout1_8ck27 = 1.0 time = 140
* CHECK dout1_9 vdout1_9ck27 = 0 time = 140
* CHECK dout1_10 vdout1_10ck27 = 0 time = 140
* CHECK dout1_11 vdout1_11ck27 = 0 time = 140
* CHECK dout1_12 vdout1_12ck27 = 1.0 time = 140
* CHECK dout1_13 vdout1_13ck27 = 0 time = 140
* CHECK dout1_14 vdout1_14ck27 = 0 time = 140
* CHECK dout1_15 vdout1_15ck27 = 1.0 time = 140
* CHECK dout1_16 vdout1_16ck27 = 1.0 time = 140
* CHECK dout1_17 vdout1_17ck27 = 0 time = 140
* CHECK dout1_18 vdout1_18ck27 = 0 time = 140
* CHECK dout1_0 vdout1_0ck28 = 1.0 time = 145
* CHECK dout1_1 vdout1_1ck28 = 0 time = 145
* CHECK dout1_2 vdout1_2ck28 = 1.0 time = 145
* CHECK dout1_3 vdout1_3ck28 = 0 time = 145
* CHECK dout1_4 vdout1_4ck28 = 0 time = 145
* CHECK dout1_5 vdout1_5ck28 = 0 time = 145
* CHECK dout1_6 vdout1_6ck28 = 1.0 time = 145
* CHECK dout1_7 vdout1_7ck28 = 1.0 time = 145
* CHECK dout1_8 vdout1_8ck28 = 0 time = 145
* CHECK dout1_9 vdout1_9ck28 = 1.0 time = 145
* CHECK dout1_10 vdout1_10ck28 = 1.0 time = 145
* CHECK dout1_11 vdout1_11ck28 = 0 time = 145
* CHECK dout1_12 vdout1_12ck28 = 1.0 time = 145
* CHECK dout1_13 vdout1_13ck28 = 1.0 time = 145
* CHECK dout1_14 vdout1_14ck28 = 1.0 time = 145
* CHECK dout1_15 vdout1_15ck28 = 1.0 time = 145
* CHECK dout1_16 vdout1_16ck28 = 0 time = 145
* CHECK dout1_17 vdout1_17ck28 = 1.0 time = 145
* CHECK dout1_18 vdout1_18ck28 = 0 time = 145
* CHECK dout1_0 vdout1_0ck29 = 1.0 time = 150
* CHECK dout1_1 vdout1_1ck29 = 0 time = 150
* CHECK dout1_2 vdout1_2ck29 = 1.0 time = 150
* CHECK dout1_3 vdout1_3ck29 = 0 time = 150
* CHECK dout1_4 vdout1_4ck29 = 0 time = 150
* CHECK dout1_5 vdout1_5ck29 = 0 time = 150
* CHECK dout1_6 vdout1_6ck29 = 1.0 time = 150
* CHECK dout1_7 vdout1_7ck29 = 1.0 time = 150
* CHECK dout1_8 vdout1_8ck29 = 0 time = 150
* CHECK dout1_9 vdout1_9ck29 = 1.0 time = 150
* CHECK dout1_10 vdout1_10ck29 = 1.0 time = 150
* CHECK dout1_11 vdout1_11ck29 = 0 time = 150
* CHECK dout1_12 vdout1_12ck29 = 1.0 time = 150
* CHECK dout1_13 vdout1_13ck29 = 1.0 time = 150
* CHECK dout1_14 vdout1_14ck29 = 1.0 time = 150
* CHECK dout1_15 vdout1_15ck29 = 1.0 time = 150
* CHECK dout1_16 vdout1_16ck29 = 0 time = 150
* CHECK dout1_17 vdout1_17ck29 = 1.0 time = 150
* CHECK dout1_18 vdout1_18ck29 = 0 time = 150
* CHECK dout1_0 vdout1_0ck31 = 0 time = 160
* CHECK dout1_1 vdout1_1ck31 = 0 time = 160
* CHECK dout1_2 vdout1_2ck31 = 1.0 time = 160
* CHECK dout1_3 vdout1_3ck31 = 0 time = 160
* CHECK dout1_4 vdout1_4ck31 = 0 time = 160
* CHECK dout1_5 vdout1_5ck31 = 1.0 time = 160
* CHECK dout1_6 vdout1_6ck31 = 1.0 time = 160
* CHECK dout1_7 vdout1_7ck31 = 0 time = 160
* CHECK dout1_8 vdout1_8ck31 = 0 time = 160
* CHECK dout1_9 vdout1_9ck31 = 0 time = 160
* CHECK dout1_10 vdout1_10ck31 = 1.0 time = 160
* CHECK dout1_11 vdout1_11ck31 = 0 time = 160
* CHECK dout1_12 vdout1_12ck31 = 0 time = 160
* CHECK dout1_13 vdout1_13ck31 = 0 time = 160
* CHECK dout1_14 vdout1_14ck31 = 0 time = 160
* CHECK dout1_15 vdout1_15ck31 = 0 time = 160
* CHECK dout1_16 vdout1_16ck31 = 0 time = 160
* CHECK dout1_17 vdout1_17ck31 = 1.0 time = 160
* CHECK dout1_18 vdout1_18ck31 = 1.0 time = 160
* CHECK dout1_0 vdout1_0ck35 = 0 time = 180
* CHECK dout1_1 vdout1_1ck35 = 0 time = 180
* CHECK dout1_2 vdout1_2ck35 = 1.0 time = 180
* CHECK dout1_3 vdout1_3ck35 = 1.0 time = 180
* CHECK dout1_4 vdout1_4ck35 = 0 time = 180
* CHECK dout1_5 vdout1_5ck35 = 1.0 time = 180
* CHECK dout1_6 vdout1_6ck35 = 1.0 time = 180
* CHECK dout1_7 vdout1_7ck35 = 0 time = 180
* CHECK dout1_8 vdout1_8ck35 = 1.0 time = 180
* CHECK dout1_9 vdout1_9ck35 = 1.0 time = 180
* CHECK dout1_10 vdout1_10ck35 = 0 time = 180
* CHECK dout1_11 vdout1_11ck35 = 1.0 time = 180
* CHECK dout1_12 vdout1_12ck35 = 0 time = 180
* CHECK dout1_13 vdout1_13ck35 = 0 time = 180
* CHECK dout1_14 vdout1_14ck35 = 0 time = 180
* CHECK dout1_15 vdout1_15ck35 = 0 time = 180
* CHECK dout1_16 vdout1_16ck35 = 1.0 time = 180
* CHECK dout1_17 vdout1_17ck35 = 1.0 time = 180
* CHECK dout1_18 vdout1_18ck35 = 1.0 time = 180
* CHECK dout1_0 vdout1_0ck37 = 1.0 time = 190
* CHECK dout1_1 vdout1_1ck37 = 0 time = 190
* CHECK dout1_2 vdout1_2ck37 = 1.0 time = 190
* CHECK dout1_3 vdout1_3ck37 = 1.0 time = 190
* CHECK dout1_4 vdout1_4ck37 = 1.0 time = 190
* CHECK dout1_5 vdout1_5ck37 = 1.0 time = 190
* CHECK dout1_6 vdout1_6ck37 = 0 time = 190
* CHECK dout1_7 vdout1_7ck37 = 1.0 time = 190
* CHECK dout1_8 vdout1_8ck37 = 1.0 time = 190
* CHECK dout1_9 vdout1_9ck37 = 0 time = 190
* CHECK dout1_10 vdout1_10ck37 = 1.0 time = 190
* CHECK dout1_11 vdout1_11ck37 = 1.0 time = 190
* CHECK dout1_12 vdout1_12ck37 = 1.0 time = 190
* CHECK dout1_13 vdout1_13ck37 = 1.0 time = 190
* CHECK dout1_14 vdout1_14ck37 = 1.0 time = 190
* CHECK dout1_15 vdout1_15ck37 = 1.0 time = 190
* CHECK dout1_16 vdout1_16ck37 = 0 time = 190
* CHECK dout1_17 vdout1_17ck37 = 1.0 time = 190
* CHECK dout1_18 vdout1_18ck37 = 1.0 time = 190
* CHECK dout1_0 vdout1_0ck38 = 1.0 time = 195
* CHECK dout1_1 vdout1_1ck38 = 0 time = 195
* CHECK dout1_2 vdout1_2ck38 = 1.0 time = 195
* CHECK dout1_3 vdout1_3ck38 = 1.0 time = 195
* CHECK dout1_4 vdout1_4ck38 = 1.0 time = 195
* CHECK dout1_5 vdout1_5ck38 = 1.0 time = 195
* CHECK dout1_6 vdout1_6ck38 = 0 time = 195
* CHECK dout1_7 vdout1_7ck38 = 1.0 time = 195
* CHECK dout1_8 vdout1_8ck38 = 1.0 time = 195
* CHECK dout1_9 vdout1_9ck38 = 0 time = 195
* CHECK dout1_10 vdout1_10ck38 = 1.0 time = 195
* CHECK dout1_11 vdout1_11ck38 = 1.0 time = 195
* CHECK dout1_12 vdout1_12ck38 = 1.0 time = 195
* CHECK dout1_13 vdout1_13ck38 = 1.0 time = 195
* CHECK dout1_14 vdout1_14ck38 = 1.0 time = 195
* CHECK dout1_15 vdout1_15ck38 = 1.0 time = 195
* CHECK dout1_16 vdout1_16ck38 = 0 time = 195
* CHECK dout1_17 vdout1_17ck38 = 1.0 time = 195
* CHECK dout1_18 vdout1_18ck38 = 1.0 time = 195
* CHECK dout1_0 vdout1_0ck39 = 1.0 time = 200
* CHECK dout1_1 vdout1_1ck39 = 0 time = 200
* CHECK dout1_2 vdout1_2ck39 = 1.0 time = 200
* CHECK dout1_3 vdout1_3ck39 = 1.0 time = 200
* CHECK dout1_4 vdout1_4ck39 = 0 time = 200
* CHECK dout1_5 vdout1_5ck39 = 1.0 time = 200
* CHECK dout1_6 vdout1_6ck39 = 1.0 time = 200
* CHECK dout1_7 vdout1_7ck39 = 1.0 time = 200
* CHECK dout1_8 vdout1_8ck39 = 0 time = 200
* CHECK dout1_9 vdout1_9ck39 = 1.0 time = 200
* CHECK dout1_10 vdout1_10ck39 = 0 time = 200
* CHECK dout1_11 vdout1_11ck39 = 1.0 time = 200
* CHECK dout1_12 vdout1_12ck39 = 1.0 time = 200
* CHECK dout1_13 vdout1_13ck39 = 0 time = 200
* CHECK dout1_14 vdout1_14ck39 = 0 time = 200
* CHECK dout1_15 vdout1_15ck39 = 1.0 time = 200
* CHECK dout1_16 vdout1_16ck39 = 0 time = 200
* CHECK dout1_17 vdout1_17ck39 = 1.0 time = 200
* CHECK dout1_18 vdout1_18ck39 = 1.0 time = 200
* CHECK dout1_0 vdout1_0ck40 = 1.0 time = 205
* CHECK dout1_1 vdout1_1ck40 = 0 time = 205
* CHECK dout1_2 vdout1_2ck40 = 1.0 time = 205
* CHECK dout1_3 vdout1_3ck40 = 1.0 time = 205
* CHECK dout1_4 vdout1_4ck40 = 1.0 time = 205
* CHECK dout1_5 vdout1_5ck40 = 1.0 time = 205
* CHECK dout1_6 vdout1_6ck40 = 0 time = 205
* CHECK dout1_7 vdout1_7ck40 = 1.0 time = 205
* CHECK dout1_8 vdout1_8ck40 = 1.0 time = 205
* CHECK dout1_9 vdout1_9ck40 = 0 time = 205
* CHECK dout1_10 vdout1_10ck40 = 1.0 time = 205
* CHECK dout1_11 vdout1_11ck40 = 1.0 time = 205
* CHECK dout1_12 vdout1_12ck40 = 1.0 time = 205
* CHECK dout1_13 vdout1_13ck40 = 1.0 time = 205
* CHECK dout1_14 vdout1_14ck40 = 1.0 time = 205
* CHECK dout1_15 vdout1_15ck40 = 1.0 time = 205
* CHECK dout1_16 vdout1_16ck40 = 0 time = 205
* CHECK dout1_17 vdout1_17ck40 = 1.0 time = 205
* CHECK dout1_18 vdout1_18ck40 = 1.0 time = 205
* CHECK dout1_0 vdout1_0ck42 = 0 time = 215
* CHECK dout1_1 vdout1_1ck42 = 1.0 time = 215
* CHECK dout1_2 vdout1_2ck42 = 1.0 time = 215
* CHECK dout1_3 vdout1_3ck42 = 0 time = 215
* CHECK dout1_4 vdout1_4ck42 = 0 time = 215
* CHECK dout1_5 vdout1_5ck42 = 1.0 time = 215
* CHECK dout1_6 vdout1_6ck42 = 0 time = 215
* CHECK dout1_7 vdout1_7ck42 = 0 time = 215
* CHECK dout1_8 vdout1_8ck42 = 0 time = 215
* CHECK dout1_9 vdout1_9ck42 = 1.0 time = 215
* CHECK dout1_10 vdout1_10ck42 = 1.0 time = 215
* CHECK dout1_11 vdout1_11ck42 = 0 time = 215
* CHECK dout1_12 vdout1_12ck42 = 1.0 time = 215
* CHECK dout1_13 vdout1_13ck42 = 1.0 time = 215
* CHECK dout1_14 vdout1_14ck42 = 0 time = 215
* CHECK dout1_15 vdout1_15ck42 = 1.0 time = 215
* CHECK dout1_16 vdout1_16ck42 = 1.0 time = 215
* CHECK dout1_17 vdout1_17ck42 = 1.0 time = 215
* CHECK dout1_18 vdout1_18ck42 = 0 time = 215
* CHECK dout1_0 vdout1_0ck43 = 0 time = 220
* CHECK dout1_1 vdout1_1ck43 = 0 time = 220
* CHECK dout1_2 vdout1_2ck43 = 1.0 time = 220
* CHECK dout1_3 vdout1_3ck43 = 1.0 time = 220
* CHECK dout1_4 vdout1_4ck43 = 0 time = 220
* CHECK dout1_5 vdout1_5ck43 = 1.0 time = 220
* CHECK dout1_6 vdout1_6ck43 = 1.0 time = 220
* CHECK dout1_7 vdout1_7ck43 = 0 time = 220
* CHECK dout1_8 vdout1_8ck43 = 1.0 time = 220
* CHECK dout1_9 vdout1_9ck43 = 1.0 time = 220
* CHECK dout1_10 vdout1_10ck43 = 0 time = 220
* CHECK dout1_11 vdout1_11ck43 = 1.0 time = 220
* CHECK dout1_12 vdout1_12ck43 = 0 time = 220
* CHECK dout1_13 vdout1_13ck43 = 0 time = 220
* CHECK dout1_14 vdout1_14ck43 = 0 time = 220
* CHECK dout1_15 vdout1_15ck43 = 0 time = 220
* CHECK dout1_16 vdout1_16ck43 = 1.0 time = 220
* CHECK dout1_17 vdout1_17ck43 = 1.0 time = 220
* CHECK dout1_18 vdout1_18ck43 = 1.0 time = 220
* CHECK dout1_0 vdout1_0ck44 = 1.0 time = 225
* CHECK dout1_1 vdout1_1ck44 = 1.0 time = 225
* CHECK dout1_2 vdout1_2ck44 = 1.0 time = 225
* CHECK dout1_3 vdout1_3ck44 = 0 time = 225
* CHECK dout1_4 vdout1_4ck44 = 1.0 time = 225
* CHECK dout1_5 vdout1_5ck44 = 0 time = 225
* CHECK dout1_6 vdout1_6ck44 = 0 time = 225
* CHECK dout1_7 vdout1_7ck44 = 1.0 time = 225
* CHECK dout1_8 vdout1_8ck44 = 0 time = 225
* CHECK dout1_9 vdout1_9ck44 = 1.0 time = 225
* CHECK dout1_10 vdout1_10ck44 = 0 time = 225
* CHECK dout1_11 vdout1_11ck44 = 0 time = 225
* CHECK dout1_12 vdout1_12ck44 = 0 time = 225
* CHECK dout1_13 vdout1_13ck44 = 0 time = 225
* CHECK dout1_14 vdout1_14ck44 = 1.0 time = 225
* CHECK dout1_15 vdout1_15ck44 = 0 time = 225
* CHECK dout1_16 vdout1_16ck44 = 0 time = 225
* CHECK dout1_17 vdout1_17ck44 = 0 time = 225
* CHECK dout1_18 vdout1_18ck44 = 0 time = 225
* CHECK dout1_0 vdout1_0ck46 = 0 time = 235
* CHECK dout1_1 vdout1_1ck46 = 0 time = 235
* CHECK dout1_2 vdout1_2ck46 = 1.0 time = 235
* CHECK dout1_3 vdout1_3ck46 = 1.0 time = 235
* CHECK dout1_4 vdout1_4ck46 = 0 time = 235
* CHECK dout1_5 vdout1_5ck46 = 1.0 time = 235
* CHECK dout1_6 vdout1_6ck46 = 1.0 time = 235
* CHECK dout1_7 vdout1_7ck46 = 0 time = 235
* CHECK dout1_8 vdout1_8ck46 = 1.0 time = 235
* CHECK dout1_9 vdout1_9ck46 = 1.0 time = 235
* CHECK dout1_10 vdout1_10ck46 = 0 time = 235
* CHECK dout1_11 vdout1_11ck46 = 1.0 time = 235
* CHECK dout1_12 vdout1_12ck46 = 0 time = 235
* CHECK dout1_13 vdout1_13ck46 = 0 time = 235
* CHECK dout1_14 vdout1_14ck46 = 0 time = 235
* CHECK dout1_15 vdout1_15ck46 = 0 time = 235
* CHECK dout1_16 vdout1_16ck46 = 1.0 time = 235
* CHECK dout1_17 vdout1_17ck46 = 1.0 time = 235
* CHECK dout1_18 vdout1_18ck46 = 1.0 time = 235
* CHECK dout1_0 vdout1_0ck47 = 1.0 time = 240
* CHECK dout1_1 vdout1_1ck47 = 1.0 time = 240
* CHECK dout1_2 vdout1_2ck47 = 1.0 time = 240
* CHECK dout1_3 vdout1_3ck47 = 1.0 time = 240
* CHECK dout1_4 vdout1_4ck47 = 1.0 time = 240
* CHECK dout1_5 vdout1_5ck47 = 1.0 time = 240
* CHECK dout1_6 vdout1_6ck47 = 0 time = 240
* CHECK dout1_7 vdout1_7ck47 = 0 time = 240
* CHECK dout1_8 vdout1_8ck47 = 1.0 time = 240
* CHECK dout1_9 vdout1_9ck47 = 1.0 time = 240
* CHECK dout1_10 vdout1_10ck47 = 1.0 time = 240
* CHECK dout1_11 vdout1_11ck47 = 0 time = 240
* CHECK dout1_12 vdout1_12ck47 = 0 time = 240
* CHECK dout1_13 vdout1_13ck47 = 1.0 time = 240
* CHECK dout1_14 vdout1_14ck47 = 1.0 time = 240
* CHECK dout1_15 vdout1_15ck47 = 0 time = 240
* CHECK dout1_16 vdout1_16ck47 = 1.0 time = 240
* CHECK dout1_17 vdout1_17ck47 = 1.0 time = 240
* CHECK dout1_18 vdout1_18ck47 = 1.0 time = 240
* CHECK dout1_0 vdout1_0ck49 = 1.0 time = 250
* CHECK dout1_1 vdout1_1ck49 = 0 time = 250
* CHECK dout1_2 vdout1_2ck49 = 1.0 time = 250
* CHECK dout1_3 vdout1_3ck49 = 0 time = 250
* CHECK dout1_4 vdout1_4ck49 = 1.0 time = 250
* CHECK dout1_5 vdout1_5ck49 = 1.0 time = 250
* CHECK dout1_6 vdout1_6ck49 = 0 time = 250
* CHECK dout1_7 vdout1_7ck49 = 1.0 time = 250
* CHECK dout1_8 vdout1_8ck49 = 1.0 time = 250
* CHECK dout1_9 vdout1_9ck49 = 1.0 time = 250
* CHECK dout1_10 vdout1_10ck49 = 1.0 time = 250
* CHECK dout1_11 vdout1_11ck49 = 1.0 time = 250
* CHECK dout1_12 vdout1_12ck49 = 1.0 time = 250
* CHECK dout1_13 vdout1_13ck49 = 1.0 time = 250
* CHECK dout1_14 vdout1_14ck49 = 1.0 time = 250
* CHECK dout1_15 vdout1_15ck49 = 0 time = 250
* CHECK dout1_16 vdout1_16ck49 = 1.0 time = 250
* CHECK dout1_17 vdout1_17ck49 = 1.0 time = 250
* CHECK dout1_18 vdout1_18ck49 = 0 time = 250
* CHECK dout1_0 vdout1_0ck50 = 1.0 time = 255
* CHECK dout1_1 vdout1_1ck50 = 1.0 time = 255
* CHECK dout1_2 vdout1_2ck50 = 1.0 time = 255
* CHECK dout1_3 vdout1_3ck50 = 1.0 time = 255
* CHECK dout1_4 vdout1_4ck50 = 1.0 time = 255
* CHECK dout1_5 vdout1_5ck50 = 1.0 time = 255
* CHECK dout1_6 vdout1_6ck50 = 0 time = 255
* CHECK dout1_7 vdout1_7ck50 = 0 time = 255
* CHECK dout1_8 vdout1_8ck50 = 1.0 time = 255
* CHECK dout1_9 vdout1_9ck50 = 1.0 time = 255
* CHECK dout1_10 vdout1_10ck50 = 1.0 time = 255
* CHECK dout1_11 vdout1_11ck50 = 0 time = 255
* CHECK dout1_12 vdout1_12ck50 = 0 time = 255
* CHECK dout1_13 vdout1_13ck50 = 1.0 time = 255
* CHECK dout1_14 vdout1_14ck50 = 1.0 time = 255
* CHECK dout1_15 vdout1_15ck50 = 0 time = 255
* CHECK dout1_16 vdout1_16ck50 = 1.0 time = 255
* CHECK dout1_17 vdout1_17ck50 = 1.0 time = 255
* CHECK dout1_18 vdout1_18ck50 = 1.0 time = 255
* CHECK dout1_0 vdout1_0ck51 = 1.0 time = 260
* CHECK dout1_1 vdout1_1ck51 = 1.0 time = 260
* CHECK dout1_2 vdout1_2ck51 = 1.0 time = 260
* CHECK dout1_3 vdout1_3ck51 = 1.0 time = 260
* CHECK dout1_4 vdout1_4ck51 = 1.0 time = 260
* CHECK dout1_5 vdout1_5ck51 = 1.0 time = 260
* CHECK dout1_6 vdout1_6ck51 = 0 time = 260
* CHECK dout1_7 vdout1_7ck51 = 0 time = 260
* CHECK dout1_8 vdout1_8ck51 = 1.0 time = 260
* CHECK dout1_9 vdout1_9ck51 = 1.0 time = 260
* CHECK dout1_10 vdout1_10ck51 = 1.0 time = 260
* CHECK dout1_11 vdout1_11ck51 = 0 time = 260
* CHECK dout1_12 vdout1_12ck51 = 0 time = 260
* CHECK dout1_13 vdout1_13ck51 = 1.0 time = 260
* CHECK dout1_14 vdout1_14ck51 = 1.0 time = 260
* CHECK dout1_15 vdout1_15ck51 = 0 time = 260
* CHECK dout1_16 vdout1_16ck51 = 1.0 time = 260
* CHECK dout1_17 vdout1_17ck51 = 1.0 time = 260
* CHECK dout1_18 vdout1_18ck51 = 1.0 time = 260
* CHECK dout1_0 vdout1_0ck54 = 0 time = 275
* CHECK dout1_1 vdout1_1ck54 = 0 time = 275
* CHECK dout1_2 vdout1_2ck54 = 1.0 time = 275
* CHECK dout1_3 vdout1_3ck54 = 1.0 time = 275
* CHECK dout1_4 vdout1_4ck54 = 1.0 time = 275
* CHECK dout1_5 vdout1_5ck54 = 1.0 time = 275
* CHECK dout1_6 vdout1_6ck54 = 1.0 time = 275
* CHECK dout1_7 vdout1_7ck54 = 0 time = 275
* CHECK dout1_8 vdout1_8ck54 = 0 time = 275
* CHECK dout1_9 vdout1_9ck54 = 0 time = 275
* CHECK dout1_10 vdout1_10ck54 = 0 time = 275
* CHECK dout1_11 vdout1_11ck54 = 1.0 time = 275
* CHECK dout1_12 vdout1_12ck54 = 0 time = 275
* CHECK dout1_13 vdout1_13ck54 = 0 time = 275
* CHECK dout1_14 vdout1_14ck54 = 0 time = 275
* CHECK dout1_15 vdout1_15ck54 = 1.0 time = 275
* CHECK dout1_16 vdout1_16ck54 = 1.0 time = 275
* CHECK dout1_17 vdout1_17ck54 = 1.0 time = 275
* CHECK dout1_18 vdout1_18ck54 = 1.0 time = 275
* CHECK dout1_0 vdout1_0ck56 = 1.0 time = 285
* CHECK dout1_1 vdout1_1ck56 = 1.0 time = 285
* CHECK dout1_2 vdout1_2ck56 = 1.0 time = 285
* CHECK dout1_3 vdout1_3ck56 = 1.0 time = 285
* CHECK dout1_4 vdout1_4ck56 = 0 time = 285
* CHECK dout1_5 vdout1_5ck56 = 0 time = 285
* CHECK dout1_6 vdout1_6ck56 = 0 time = 285
* CHECK dout1_7 vdout1_7ck56 = 0 time = 285
* CHECK dout1_8 vdout1_8ck56 = 0 time = 285
* CHECK dout1_9 vdout1_9ck56 = 1.0 time = 285
* CHECK dout1_10 vdout1_10ck56 = 1.0 time = 285
* CHECK dout1_11 vdout1_11ck56 = 0 time = 285
* CHECK dout1_12 vdout1_12ck56 = 0 time = 285
* CHECK dout1_13 vdout1_13ck56 = 0 time = 285
* CHECK dout1_14 vdout1_14ck56 = 1.0 time = 285
* CHECK dout1_15 vdout1_15ck56 = 1.0 time = 285
* CHECK dout1_16 vdout1_16ck56 = 1.0 time = 285
* CHECK dout1_17 vdout1_17ck56 = 0 time = 285
* CHECK dout1_18 vdout1_18ck56 = 1.0 time = 285
* CHECK dout1_0 vdout1_0ck57 = 0 time = 290
* CHECK dout1_1 vdout1_1ck57 = 0 time = 290
* CHECK dout1_2 vdout1_2ck57 = 1.0 time = 290
* CHECK dout1_3 vdout1_3ck57 = 1.0 time = 290
* CHECK dout1_4 vdout1_4ck57 = 0 time = 290
* CHECK dout1_5 vdout1_5ck57 = 1.0 time = 290
* CHECK dout1_6 vdout1_6ck57 = 1.0 time = 290
* CHECK dout1_7 vdout1_7ck57 = 0 time = 290
* CHECK dout1_8 vdout1_8ck57 = 1.0 time = 290
* CHECK dout1_9 vdout1_9ck57 = 1.0 time = 290
* CHECK dout1_10 vdout1_10ck57 = 0 time = 290
* CHECK dout1_11 vdout1_11ck57 = 1.0 time = 290
* CHECK dout1_12 vdout1_12ck57 = 0 time = 290
* CHECK dout1_13 vdout1_13ck57 = 0 time = 290
* CHECK dout1_14 vdout1_14ck57 = 0 time = 290
* CHECK dout1_15 vdout1_15ck57 = 0 time = 290
* CHECK dout1_16 vdout1_16ck57 = 1.0 time = 290
* CHECK dout1_17 vdout1_17ck57 = 1.0 time = 290
* CHECK dout1_18 vdout1_18ck57 = 1.0 time = 290
* CHECK dout1_0 vdout1_0ck60 = 0 time = 305
* CHECK dout1_1 vdout1_1ck60 = 0 time = 305
* CHECK dout1_2 vdout1_2ck60 = 1.0 time = 305
* CHECK dout1_3 vdout1_3ck60 = 1.0 time = 305
* CHECK dout1_4 vdout1_4ck60 = 0 time = 305
* CHECK dout1_5 vdout1_5ck60 = 1.0 time = 305
* CHECK dout1_6 vdout1_6ck60 = 1.0 time = 305
* CHECK dout1_7 vdout1_7ck60 = 0 time = 305
* CHECK dout1_8 vdout1_8ck60 = 1.0 time = 305
* CHECK dout1_9 vdout1_9ck60 = 1.0 time = 305
* CHECK dout1_10 vdout1_10ck60 = 0 time = 305
* CHECK dout1_11 vdout1_11ck60 = 1.0 time = 305
* CHECK dout1_12 vdout1_12ck60 = 0 time = 305
* CHECK dout1_13 vdout1_13ck60 = 0 time = 305
* CHECK dout1_14 vdout1_14ck60 = 0 time = 305
* CHECK dout1_15 vdout1_15ck60 = 0 time = 305
* CHECK dout1_16 vdout1_16ck60 = 1.0 time = 305
* CHECK dout1_17 vdout1_17ck60 = 1.0 time = 305
* CHECK dout1_18 vdout1_18ck60 = 1.0 time = 305
* CHECK dout1_0 vdout1_0ck66 = 0 time = 335
* CHECK dout1_1 vdout1_1ck66 = 1.0 time = 335
* CHECK dout1_2 vdout1_2ck66 = 0 time = 335
* CHECK dout1_3 vdout1_3ck66 = 1.0 time = 335
* CHECK dout1_4 vdout1_4ck66 = 0 time = 335
* CHECK dout1_5 vdout1_5ck66 = 1.0 time = 335
* CHECK dout1_6 vdout1_6ck66 = 0 time = 335
* CHECK dout1_7 vdout1_7ck66 = 1.0 time = 335
* CHECK dout1_8 vdout1_8ck66 = 1.0 time = 335
* CHECK dout1_9 vdout1_9ck66 = 1.0 time = 335
* CHECK dout1_10 vdout1_10ck66 = 0 time = 335
* CHECK dout1_11 vdout1_11ck66 = 0 time = 335
* CHECK dout1_12 vdout1_12ck66 = 1.0 time = 335
* CHECK dout1_13 vdout1_13ck66 = 1.0 time = 335
* CHECK dout1_14 vdout1_14ck66 = 0 time = 335
* CHECK dout1_15 vdout1_15ck66 = 0 time = 335
* CHECK dout1_16 vdout1_16ck66 = 1.0 time = 335
* CHECK dout1_17 vdout1_17ck66 = 0 time = 335
* CHECK dout1_18 vdout1_18ck66 = 1.0 time = 335
* CHECK dout1_0 vdout1_0ck67 = 0 time = 340
* CHECK dout1_1 vdout1_1ck67 = 0 time = 340
* CHECK dout1_2 vdout1_2ck67 = 0 time = 340
* CHECK dout1_3 vdout1_3ck67 = 0 time = 340
* CHECK dout1_4 vdout1_4ck67 = 0 time = 340
* CHECK dout1_5 vdout1_5ck67 = 0 time = 340
* CHECK dout1_6 vdout1_6ck67 = 1.0 time = 340
* CHECK dout1_7 vdout1_7ck67 = 0 time = 340
* CHECK dout1_8 vdout1_8ck67 = 1.0 time = 340
* CHECK dout1_9 vdout1_9ck67 = 0 time = 340
* CHECK dout1_10 vdout1_10ck67 = 1.0 time = 340
* CHECK dout1_11 vdout1_11ck67 = 1.0 time = 340
* CHECK dout1_12 vdout1_12ck67 = 1.0 time = 340
* CHECK dout1_13 vdout1_13ck67 = 0 time = 340
* CHECK dout1_14 vdout1_14ck67 = 1.0 time = 340
* CHECK dout1_15 vdout1_15ck67 = 0 time = 340
* CHECK dout1_16 vdout1_16ck67 = 0 time = 340
* CHECK dout1_17 vdout1_17ck67 = 1.0 time = 340
* CHECK dout1_18 vdout1_18ck67 = 1.0 time = 340
* CHECK dout1_0 vdout1_0ck68 = 0 time = 345
* CHECK dout1_1 vdout1_1ck68 = 0 time = 345
* CHECK dout1_2 vdout1_2ck68 = 0 time = 345
* CHECK dout1_3 vdout1_3ck68 = 0 time = 345
* CHECK dout1_4 vdout1_4ck68 = 0 time = 345
* CHECK dout1_5 vdout1_5ck68 = 1.0 time = 345
* CHECK dout1_6 vdout1_6ck68 = 1.0 time = 345
* CHECK dout1_7 vdout1_7ck68 = 0 time = 345
* CHECK dout1_8 vdout1_8ck68 = 1.0 time = 345
* CHECK dout1_9 vdout1_9ck68 = 1.0 time = 345
* CHECK dout1_10 vdout1_10ck68 = 1.0 time = 345
* CHECK dout1_11 vdout1_11ck68 = 1.0 time = 345
* CHECK dout1_12 vdout1_12ck68 = 0 time = 345
* CHECK dout1_13 vdout1_13ck68 = 1.0 time = 345
* CHECK dout1_14 vdout1_14ck68 = 0 time = 345
* CHECK dout1_15 vdout1_15ck68 = 1.0 time = 345
* CHECK dout1_16 vdout1_16ck68 = 0 time = 345
* CHECK dout1_17 vdout1_17ck68 = 0 time = 345
* CHECK dout1_18 vdout1_18ck68 = 0 time = 345
* CHECK dout1_0 vdout1_0ck70 = 0 time = 355
* CHECK dout1_1 vdout1_1ck70 = 1.0 time = 355
* CHECK dout1_2 vdout1_2ck70 = 0 time = 355
* CHECK dout1_3 vdout1_3ck70 = 1.0 time = 355
* CHECK dout1_4 vdout1_4ck70 = 0 time = 355
* CHECK dout1_5 vdout1_5ck70 = 1.0 time = 355
* CHECK dout1_6 vdout1_6ck70 = 0 time = 355
* CHECK dout1_7 vdout1_7ck70 = 1.0 time = 355
* CHECK dout1_8 vdout1_8ck70 = 1.0 time = 355
* CHECK dout1_9 vdout1_9ck70 = 1.0 time = 355
* CHECK dout1_10 vdout1_10ck70 = 0 time = 355
* CHECK dout1_11 vdout1_11ck70 = 0 time = 355
* CHECK dout1_12 vdout1_12ck70 = 1.0 time = 355
* CHECK dout1_13 vdout1_13ck70 = 1.0 time = 355
* CHECK dout1_14 vdout1_14ck70 = 0 time = 355
* CHECK dout1_15 vdout1_15ck70 = 0 time = 355
* CHECK dout1_16 vdout1_16ck70 = 1.0 time = 355
* CHECK dout1_17 vdout1_17ck70 = 0 time = 355
* CHECK dout1_18 vdout1_18ck70 = 1.0 time = 355
* CHECK dout1_0 vdout1_0ck71 = 0 time = 360
* CHECK dout1_1 vdout1_1ck71 = 1.0 time = 360
* CHECK dout1_2 vdout1_2ck71 = 0 time = 360
* CHECK dout1_3 vdout1_3ck71 = 1.0 time = 360
* CHECK dout1_4 vdout1_4ck71 = 0 time = 360
* CHECK dout1_5 vdout1_5ck71 = 1.0 time = 360
* CHECK dout1_6 vdout1_6ck71 = 0 time = 360
* CHECK dout1_7 vdout1_7ck71 = 1.0 time = 360
* CHECK dout1_8 vdout1_8ck71 = 1.0 time = 360
* CHECK dout1_9 vdout1_9ck71 = 1.0 time = 360
* CHECK dout1_10 vdout1_10ck71 = 0 time = 360
* CHECK dout1_11 vdout1_11ck71 = 0 time = 360
* CHECK dout1_12 vdout1_12ck71 = 1.0 time = 360
* CHECK dout1_13 vdout1_13ck71 = 1.0 time = 360
* CHECK dout1_14 vdout1_14ck71 = 0 time = 360
* CHECK dout1_15 vdout1_15ck71 = 0 time = 360
* CHECK dout1_16 vdout1_16ck71 = 1.0 time = 360
* CHECK dout1_17 vdout1_17ck71 = 0 time = 360
* CHECK dout1_18 vdout1_18ck71 = 1.0 time = 360
* CHECK dout1_0 vdout1_0ck72 = 0 time = 365
* CHECK dout1_1 vdout1_1ck72 = 0 time = 365
* CHECK dout1_2 vdout1_2ck72 = 0 time = 365
* CHECK dout1_3 vdout1_3ck72 = 0 time = 365
* CHECK dout1_4 vdout1_4ck72 = 0 time = 365
* CHECK dout1_5 vdout1_5ck72 = 0 time = 365
* CHECK dout1_6 vdout1_6ck72 = 1.0 time = 365
* CHECK dout1_7 vdout1_7ck72 = 0 time = 365
* CHECK dout1_8 vdout1_8ck72 = 1.0 time = 365
* CHECK dout1_9 vdout1_9ck72 = 0 time = 365
* CHECK dout1_10 vdout1_10ck72 = 1.0 time = 365
* CHECK dout1_11 vdout1_11ck72 = 1.0 time = 365
* CHECK dout1_12 vdout1_12ck72 = 1.0 time = 365
* CHECK dout1_13 vdout1_13ck72 = 0 time = 365
* CHECK dout1_14 vdout1_14ck72 = 1.0 time = 365
* CHECK dout1_15 vdout1_15ck72 = 0 time = 365
* CHECK dout1_16 vdout1_16ck72 = 0 time = 365
* CHECK dout1_17 vdout1_17ck72 = 1.0 time = 365
* CHECK dout1_18 vdout1_18ck72 = 1.0 time = 365
* CHECK dout1_0 vdout1_0ck74 = 1.0 time = 375
* CHECK dout1_1 vdout1_1ck74 = 0 time = 375
* CHECK dout1_2 vdout1_2ck74 = 1.0 time = 375
* CHECK dout1_3 vdout1_3ck74 = 0 time = 375
* CHECK dout1_4 vdout1_4ck74 = 1.0 time = 375
* CHECK dout1_5 vdout1_5ck74 = 1.0 time = 375
* CHECK dout1_6 vdout1_6ck74 = 0 time = 375
* CHECK dout1_7 vdout1_7ck74 = 1.0 time = 375
* CHECK dout1_8 vdout1_8ck74 = 0 time = 375
* CHECK dout1_9 vdout1_9ck74 = 1.0 time = 375
* CHECK dout1_10 vdout1_10ck74 = 0 time = 375
* CHECK dout1_11 vdout1_11ck74 = 0 time = 375
* CHECK dout1_12 vdout1_12ck74 = 1.0 time = 375
* CHECK dout1_13 vdout1_13ck74 = 1.0 time = 375
* CHECK dout1_14 vdout1_14ck74 = 0 time = 375
* CHECK dout1_15 vdout1_15ck74 = 1.0 time = 375
* CHECK dout1_16 vdout1_16ck74 = 1.0 time = 375
* CHECK dout1_17 vdout1_17ck74 = 0 time = 375
* CHECK dout1_18 vdout1_18ck74 = 1.0 time = 375
* CHECK dout1_0 vdout1_0ck78 = 0 time = 395
* CHECK dout1_1 vdout1_1ck78 = 0 time = 395
* CHECK dout1_2 vdout1_2ck78 = 0 time = 395
* CHECK dout1_3 vdout1_3ck78 = 0 time = 395
* CHECK dout1_4 vdout1_4ck78 = 0 time = 395
* CHECK dout1_5 vdout1_5ck78 = 1.0 time = 395
* CHECK dout1_6 vdout1_6ck78 = 0 time = 395
* CHECK dout1_7 vdout1_7ck78 = 0 time = 395
* CHECK dout1_8 vdout1_8ck78 = 0 time = 395
* CHECK dout1_9 vdout1_9ck78 = 1.0 time = 395
* CHECK dout1_10 vdout1_10ck78 = 1.0 time = 395
* CHECK dout1_11 vdout1_11ck78 = 0 time = 395
* CHECK dout1_12 vdout1_12ck78 = 0 time = 395
* CHECK dout1_13 vdout1_13ck78 = 1.0 time = 395
* CHECK dout1_14 vdout1_14ck78 = 0 time = 395
* CHECK dout1_15 vdout1_15ck78 = 1.0 time = 395
* CHECK dout1_16 vdout1_16ck78 = 1.0 time = 395
* CHECK dout1_17 vdout1_17ck78 = 0 time = 395
* CHECK dout1_18 vdout1_18ck78 = 0 time = 395
* CHECK dout1_0 vdout1_0ck82 = 0 time = 415
* CHECK dout1_1 vdout1_1ck82 = 0 time = 415
* CHECK dout1_2 vdout1_2ck82 = 0 time = 415
* CHECK dout1_3 vdout1_3ck82 = 0 time = 415
* CHECK dout1_4 vdout1_4ck82 = 1.0 time = 415
* CHECK dout1_5 vdout1_5ck82 = 0 time = 415
* CHECK dout1_6 vdout1_6ck82 = 0 time = 415
* CHECK dout1_7 vdout1_7ck82 = 1.0 time = 415
* CHECK dout1_8 vdout1_8ck82 = 1.0 time = 415
* CHECK dout1_9 vdout1_9ck82 = 1.0 time = 415
* CHECK dout1_10 vdout1_10ck82 = 0 time = 415
* CHECK dout1_11 vdout1_11ck82 = 1.0 time = 415
* CHECK dout1_12 vdout1_12ck82 = 0 time = 415
* CHECK dout1_13 vdout1_13ck82 = 0 time = 415
* CHECK dout1_14 vdout1_14ck82 = 1.0 time = 415
* CHECK dout1_15 vdout1_15ck82 = 0 time = 415
* CHECK dout1_16 vdout1_16ck82 = 1.0 time = 415
* CHECK dout1_17 vdout1_17ck82 = 1.0 time = 415
* CHECK dout1_18 vdout1_18ck82 = 1.0 time = 415
* CHECK dout1_0 vdout1_0ck84 = 1.0 time = 425
* CHECK dout1_1 vdout1_1ck84 = 1.0 time = 425
* CHECK dout1_2 vdout1_2ck84 = 1.0 time = 425
* CHECK dout1_3 vdout1_3ck84 = 0 time = 425
* CHECK dout1_4 vdout1_4ck84 = 1.0 time = 425
* CHECK dout1_5 vdout1_5ck84 = 0 time = 425
* CHECK dout1_6 vdout1_6ck84 = 1.0 time = 425
* CHECK dout1_7 vdout1_7ck84 = 1.0 time = 425
* CHECK dout1_8 vdout1_8ck84 = 1.0 time = 425
* CHECK dout1_9 vdout1_9ck84 = 1.0 time = 425
* CHECK dout1_10 vdout1_10ck84 = 0 time = 425
* CHECK dout1_11 vdout1_11ck84 = 1.0 time = 425
* CHECK dout1_12 vdout1_12ck84 = 0 time = 425
* CHECK dout1_13 vdout1_13ck84 = 0 time = 425
* CHECK dout1_14 vdout1_14ck84 = 1.0 time = 425
* CHECK dout1_15 vdout1_15ck84 = 1.0 time = 425
* CHECK dout1_16 vdout1_16ck84 = 1.0 time = 425
* CHECK dout1_17 vdout1_17ck84 = 1.0 time = 425
* CHECK dout1_18 vdout1_18ck84 = 0 time = 425
* CHECK dout1_0 vdout1_0ck86 = 0 time = 435
* CHECK dout1_1 vdout1_1ck86 = 1.0 time = 435
* CHECK dout1_2 vdout1_2ck86 = 0 time = 435
* CHECK dout1_3 vdout1_3ck86 = 1.0 time = 435
* CHECK dout1_4 vdout1_4ck86 = 1.0 time = 435
* CHECK dout1_5 vdout1_5ck86 = 1.0 time = 435
* CHECK dout1_6 vdout1_6ck86 = 0 time = 435
* CHECK dout1_7 vdout1_7ck86 = 0 time = 435
* CHECK dout1_8 vdout1_8ck86 = 0 time = 435
* CHECK dout1_9 vdout1_9ck86 = 0 time = 435
* CHECK dout1_10 vdout1_10ck86 = 0 time = 435
* CHECK dout1_11 vdout1_11ck86 = 0 time = 435
* CHECK dout1_12 vdout1_12ck86 = 1.0 time = 435
* CHECK dout1_13 vdout1_13ck86 = 0 time = 435
* CHECK dout1_14 vdout1_14ck86 = 0 time = 435
* CHECK dout1_15 vdout1_15ck86 = 1.0 time = 435
* CHECK dout1_16 vdout1_16ck86 = 1.0 time = 435
* CHECK dout1_17 vdout1_17ck86 = 1.0 time = 435
* CHECK dout1_18 vdout1_18ck86 = 0 time = 435
* CHECK dout1_0 vdout1_0ck87 = 0 time = 440
* CHECK dout1_1 vdout1_1ck87 = 1.0 time = 440
* CHECK dout1_2 vdout1_2ck87 = 0 time = 440
* CHECK dout1_3 vdout1_3ck87 = 1.0 time = 440
* CHECK dout1_4 vdout1_4ck87 = 1.0 time = 440
* CHECK dout1_5 vdout1_5ck87 = 1.0 time = 440
* CHECK dout1_6 vdout1_6ck87 = 0 time = 440
* CHECK dout1_7 vdout1_7ck87 = 0 time = 440
* CHECK dout1_8 vdout1_8ck87 = 0 time = 440
* CHECK dout1_9 vdout1_9ck87 = 0 time = 440
* CHECK dout1_10 vdout1_10ck87 = 0 time = 440
* CHECK dout1_11 vdout1_11ck87 = 0 time = 440
* CHECK dout1_12 vdout1_12ck87 = 1.0 time = 440
* CHECK dout1_13 vdout1_13ck87 = 0 time = 440
* CHECK dout1_14 vdout1_14ck87 = 0 time = 440
* CHECK dout1_15 vdout1_15ck87 = 1.0 time = 440
* CHECK dout1_16 vdout1_16ck87 = 1.0 time = 440
* CHECK dout1_17 vdout1_17ck87 = 1.0 time = 440
* CHECK dout1_18 vdout1_18ck87 = 0 time = 440
* CHECK dout1_0 vdout1_0ck90 = 1.0 time = 455
* CHECK dout1_1 vdout1_1ck90 = 0 time = 455
* CHECK dout1_2 vdout1_2ck90 = 0 time = 455
* CHECK dout1_3 vdout1_3ck90 = 0 time = 455
* CHECK dout1_4 vdout1_4ck90 = 1.0 time = 455
* CHECK dout1_5 vdout1_5ck90 = 1.0 time = 455
* CHECK dout1_6 vdout1_6ck90 = 0 time = 455
* CHECK dout1_7 vdout1_7ck90 = 1.0 time = 455
* CHECK dout1_8 vdout1_8ck90 = 1.0 time = 455
* CHECK dout1_9 vdout1_9ck90 = 0 time = 455
* CHECK dout1_10 vdout1_10ck90 = 0 time = 455
* CHECK dout1_11 vdout1_11ck90 = 0 time = 455
* CHECK dout1_12 vdout1_12ck90 = 1.0 time = 455
* CHECK dout1_13 vdout1_13ck90 = 0 time = 455
* CHECK dout1_14 vdout1_14ck90 = 1.0 time = 455
* CHECK dout1_15 vdout1_15ck90 = 1.0 time = 455
* CHECK dout1_16 vdout1_16ck90 = 1.0 time = 455
* CHECK dout1_17 vdout1_17ck90 = 0 time = 455
* CHECK dout1_18 vdout1_18ck90 = 1.0 time = 455
* CHECK dout1_0 vdout1_0ck91 = 1.0 time = 460
* CHECK dout1_1 vdout1_1ck91 = 1.0 time = 460
* CHECK dout1_2 vdout1_2ck91 = 0 time = 460
* CHECK dout1_3 vdout1_3ck91 = 1.0 time = 460
* CHECK dout1_4 vdout1_4ck91 = 1.0 time = 460
* CHECK dout1_5 vdout1_5ck91 = 1.0 time = 460
* CHECK dout1_6 vdout1_6ck91 = 1.0 time = 460
* CHECK dout1_7 vdout1_7ck91 = 1.0 time = 460
* CHECK dout1_8 vdout1_8ck91 = 1.0 time = 460
* CHECK dout1_9 vdout1_9ck91 = 0 time = 460
* CHECK dout1_10 vdout1_10ck91 = 0 time = 460
* CHECK dout1_11 vdout1_11ck91 = 0 time = 460
* CHECK dout1_12 vdout1_12ck91 = 0 time = 460
* CHECK dout1_13 vdout1_13ck91 = 0 time = 460
* CHECK dout1_14 vdout1_14ck91 = 0 time = 460
* CHECK dout1_15 vdout1_15ck91 = 1.0 time = 460
* CHECK dout1_16 vdout1_16ck91 = 1.0 time = 460
* CHECK dout1_17 vdout1_17ck91 = 0 time = 460
* CHECK dout1_18 vdout1_18ck91 = 1.0 time = 460
* CHECK dout1_0 vdout1_0ck92 = 0 time = 465
* CHECK dout1_1 vdout1_1ck92 = 0 time = 465
* CHECK dout1_2 vdout1_2ck92 = 0 time = 465
* CHECK dout1_3 vdout1_3ck92 = 0 time = 465
* CHECK dout1_4 vdout1_4ck92 = 1.0 time = 465
* CHECK dout1_5 vdout1_5ck92 = 0 time = 465
* CHECK dout1_6 vdout1_6ck92 = 0 time = 465
* CHECK dout1_7 vdout1_7ck92 = 1.0 time = 465
* CHECK dout1_8 vdout1_8ck92 = 1.0 time = 465
* CHECK dout1_9 vdout1_9ck92 = 1.0 time = 465
* CHECK dout1_10 vdout1_10ck92 = 0 time = 465
* CHECK dout1_11 vdout1_11ck92 = 1.0 time = 465
* CHECK dout1_12 vdout1_12ck92 = 0 time = 465
* CHECK dout1_13 vdout1_13ck92 = 0 time = 465
* CHECK dout1_14 vdout1_14ck92 = 1.0 time = 465
* CHECK dout1_15 vdout1_15ck92 = 0 time = 465
* CHECK dout1_16 vdout1_16ck92 = 1.0 time = 465
* CHECK dout1_17 vdout1_17ck92 = 1.0 time = 465
* CHECK dout1_18 vdout1_18ck92 = 1.0 time = 465
* CHECK dout1_0 vdout1_0ck97 = 0 time = 490
* CHECK dout1_1 vdout1_1ck97 = 1.0 time = 490
* CHECK dout1_2 vdout1_2ck97 = 1.0 time = 490
* CHECK dout1_3 vdout1_3ck97 = 0 time = 490
* CHECK dout1_4 vdout1_4ck97 = 0 time = 490
* CHECK dout1_5 vdout1_5ck97 = 0 time = 490
* CHECK dout1_6 vdout1_6ck97 = 1.0 time = 490
* CHECK dout1_7 vdout1_7ck97 = 0 time = 490
* CHECK dout1_8 vdout1_8ck97 = 0 time = 490
* CHECK dout1_9 vdout1_9ck97 = 0 time = 490
* CHECK dout1_10 vdout1_10ck97 = 1.0 time = 490
* CHECK dout1_11 vdout1_11ck97 = 0 time = 490
* CHECK dout1_12 vdout1_12ck97 = 1.0 time = 490
* CHECK dout1_13 vdout1_13ck97 = 1.0 time = 490
* CHECK dout1_14 vdout1_14ck97 = 0 time = 490
* CHECK dout1_15 vdout1_15ck97 = 1.0 time = 490
* CHECK dout1_16 vdout1_16ck97 = 1.0 time = 490
* CHECK dout1_17 vdout1_17ck97 = 0 time = 490
* CHECK dout1_18 vdout1_18ck97 = 0 time = 490
* CHECK dout1_0 vdout1_0ck99 = 0 time = 500
* CHECK dout1_1 vdout1_1ck99 = 1.0 time = 500
* CHECK dout1_2 vdout1_2ck99 = 1.0 time = 500
* CHECK dout1_3 vdout1_3ck99 = 0 time = 500
* CHECK dout1_4 vdout1_4ck99 = 0 time = 500
* CHECK dout1_5 vdout1_5ck99 = 0 time = 500
* CHECK dout1_6 vdout1_6ck99 = 1.0 time = 500
* CHECK dout1_7 vdout1_7ck99 = 0 time = 500
* CHECK dout1_8 vdout1_8ck99 = 0 time = 500
* CHECK dout1_9 vdout1_9ck99 = 0 time = 500
* CHECK dout1_10 vdout1_10ck99 = 1.0 time = 500
* CHECK dout1_11 vdout1_11ck99 = 0 time = 500
* CHECK dout1_12 vdout1_12ck99 = 1.0 time = 500
* CHECK dout1_13 vdout1_13ck99 = 1.0 time = 500
* CHECK dout1_14 vdout1_14ck99 = 0 time = 500
* CHECK dout1_15 vdout1_15ck99 = 1.0 time = 500
* CHECK dout1_16 vdout1_16ck99 = 1.0 time = 500
* CHECK dout1_17 vdout1_17ck99 = 0 time = 500
* CHECK dout1_18 vdout1_18ck99 = 0 time = 500
* CHECK dout1_0 vdout1_0ck103 = 0 time = 520
* CHECK dout1_1 vdout1_1ck103 = 0 time = 520
* CHECK dout1_2 vdout1_2ck103 = 0 time = 520
* CHECK dout1_3 vdout1_3ck103 = 1.0 time = 520
* CHECK dout1_4 vdout1_4ck103 = 1.0 time = 520
* CHECK dout1_5 vdout1_5ck103 = 0 time = 520
* CHECK dout1_6 vdout1_6ck103 = 0 time = 520
* CHECK dout1_7 vdout1_7ck103 = 1.0 time = 520
* CHECK dout1_8 vdout1_8ck103 = 0 time = 520
* CHECK dout1_9 vdout1_9ck103 = 1.0 time = 520
* CHECK dout1_10 vdout1_10ck103 = 1.0 time = 520
* CHECK dout1_11 vdout1_11ck103 = 1.0 time = 520
* CHECK dout1_12 vdout1_12ck103 = 1.0 time = 520
* CHECK dout1_13 vdout1_13ck103 = 0 time = 520
* CHECK dout1_14 vdout1_14ck103 = 1.0 time = 520
* CHECK dout1_15 vdout1_15ck103 = 0 time = 520
* CHECK dout1_16 vdout1_16ck103 = 1.0 time = 520
* CHECK dout1_17 vdout1_17ck103 = 1.0 time = 520
* CHECK dout1_18 vdout1_18ck103 = 0 time = 520
* CHECK dout1_0 vdout1_0ck104 = 0 time = 525
* CHECK dout1_1 vdout1_1ck104 = 0 time = 525
* CHECK dout1_2 vdout1_2ck104 = 0 time = 525
* CHECK dout1_3 vdout1_3ck104 = 1.0 time = 525
* CHECK dout1_4 vdout1_4ck104 = 0 time = 525
* CHECK dout1_5 vdout1_5ck104 = 0 time = 525
* CHECK dout1_6 vdout1_6ck104 = 1.0 time = 525
* CHECK dout1_7 vdout1_7ck104 = 0 time = 525
* CHECK dout1_8 vdout1_8ck104 = 0 time = 525
* CHECK dout1_9 vdout1_9ck104 = 0 time = 525
* CHECK dout1_10 vdout1_10ck104 = 1.0 time = 525
* CHECK dout1_11 vdout1_11ck104 = 1.0 time = 525
* CHECK dout1_12 vdout1_12ck104 = 0 time = 525
* CHECK dout1_13 vdout1_13ck104 = 0 time = 525
* CHECK dout1_14 vdout1_14ck104 = 1.0 time = 525
* CHECK dout1_15 vdout1_15ck104 = 1.0 time = 525
* CHECK dout1_16 vdout1_16ck104 = 0 time = 525
* CHECK dout1_17 vdout1_17ck104 = 0 time = 525
* CHECK dout1_18 vdout1_18ck104 = 0 time = 525
* CHECK dout1_0 vdout1_0ck108 = 1.0 time = 545
* CHECK dout1_1 vdout1_1ck108 = 1.0 time = 545
* CHECK dout1_2 vdout1_2ck108 = 1.0 time = 545
* CHECK dout1_3 vdout1_3ck108 = 1.0 time = 545
* CHECK dout1_4 vdout1_4ck108 = 0 time = 545
* CHECK dout1_5 vdout1_5ck108 = 1.0 time = 545
* CHECK dout1_6 vdout1_6ck108 = 1.0 time = 545
* CHECK dout1_7 vdout1_7ck108 = 1.0 time = 545
* CHECK dout1_8 vdout1_8ck108 = 0 time = 545
* CHECK dout1_9 vdout1_9ck108 = 0 time = 545
* CHECK dout1_10 vdout1_10ck108 = 1.0 time = 545
* CHECK dout1_11 vdout1_11ck108 = 1.0 time = 545
* CHECK dout1_12 vdout1_12ck108 = 0 time = 545
* CHECK dout1_13 vdout1_13ck108 = 1.0 time = 545
* CHECK dout1_14 vdout1_14ck108 = 0 time = 545
* CHECK dout1_15 vdout1_15ck108 = 1.0 time = 545
* CHECK dout1_16 vdout1_16ck108 = 1.0 time = 545
* CHECK dout1_17 vdout1_17ck108 = 1.0 time = 545
* CHECK dout1_18 vdout1_18ck108 = 1.0 time = 545
* CHECK dout1_0 vdout1_0ck110 = 1.0 time = 555
* CHECK dout1_1 vdout1_1ck110 = 0 time = 555
* CHECK dout1_2 vdout1_2ck110 = 1.0 time = 555
* CHECK dout1_3 vdout1_3ck110 = 1.0 time = 555
* CHECK dout1_4 vdout1_4ck110 = 1.0 time = 555
* CHECK dout1_5 vdout1_5ck110 = 0 time = 555
* CHECK dout1_6 vdout1_6ck110 = 1.0 time = 555
* CHECK dout1_7 vdout1_7ck110 = 1.0 time = 555
* CHECK dout1_8 vdout1_8ck110 = 1.0 time = 555
* CHECK dout1_9 vdout1_9ck110 = 1.0 time = 555
* CHECK dout1_10 vdout1_10ck110 = 1.0 time = 555
* CHECK dout1_11 vdout1_11ck110 = 1.0 time = 555
* CHECK dout1_12 vdout1_12ck110 = 1.0 time = 555
* CHECK dout1_13 vdout1_13ck110 = 0 time = 555
* CHECK dout1_14 vdout1_14ck110 = 0 time = 555
* CHECK dout1_15 vdout1_15ck110 = 0 time = 555
* CHECK dout1_16 vdout1_16ck110 = 0 time = 555
* CHECK dout1_17 vdout1_17ck110 = 0 time = 555
* CHECK dout1_18 vdout1_18ck110 = 1.0 time = 555
* CHECK dout1_0 vdout1_0ck111 = 1.0 time = 560
* CHECK dout1_1 vdout1_1ck111 = 1.0 time = 560
* CHECK dout1_2 vdout1_2ck111 = 1.0 time = 560
* CHECK dout1_3 vdout1_3ck111 = 1.0 time = 560
* CHECK dout1_4 vdout1_4ck111 = 0 time = 560
* CHECK dout1_5 vdout1_5ck111 = 1.0 time = 560
* CHECK dout1_6 vdout1_6ck111 = 1.0 time = 560
* CHECK dout1_7 vdout1_7ck111 = 1.0 time = 560
* CHECK dout1_8 vdout1_8ck111 = 0 time = 560
* CHECK dout1_9 vdout1_9ck111 = 0 time = 560
* CHECK dout1_10 vdout1_10ck111 = 1.0 time = 560
* CHECK dout1_11 vdout1_11ck111 = 1.0 time = 560
* CHECK dout1_12 vdout1_12ck111 = 0 time = 560
* CHECK dout1_13 vdout1_13ck111 = 1.0 time = 560
* CHECK dout1_14 vdout1_14ck111 = 0 time = 560
* CHECK dout1_15 vdout1_15ck111 = 1.0 time = 560
* CHECK dout1_16 vdout1_16ck111 = 1.0 time = 560
* CHECK dout1_17 vdout1_17ck111 = 1.0 time = 560
* CHECK dout1_18 vdout1_18ck111 = 1.0 time = 560
* CHECK dout1_0 vdout1_0ck113 = 0 time = 570
* CHECK dout1_1 vdout1_1ck113 = 1.0 time = 570
* CHECK dout1_2 vdout1_2ck113 = 1.0 time = 570
* CHECK dout1_3 vdout1_3ck113 = 0 time = 570
* CHECK dout1_4 vdout1_4ck113 = 0 time = 570
* CHECK dout1_5 vdout1_5ck113 = 0 time = 570
* CHECK dout1_6 vdout1_6ck113 = 1.0 time = 570
* CHECK dout1_7 vdout1_7ck113 = 0 time = 570
* CHECK dout1_8 vdout1_8ck113 = 0 time = 570
* CHECK dout1_9 vdout1_9ck113 = 0 time = 570
* CHECK dout1_10 vdout1_10ck113 = 1.0 time = 570
* CHECK dout1_11 vdout1_11ck113 = 0 time = 570
* CHECK dout1_12 vdout1_12ck113 = 1.0 time = 570
* CHECK dout1_13 vdout1_13ck113 = 1.0 time = 570
* CHECK dout1_14 vdout1_14ck113 = 0 time = 570
* CHECK dout1_15 vdout1_15ck113 = 1.0 time = 570
* CHECK dout1_16 vdout1_16ck113 = 1.0 time = 570
* CHECK dout1_17 vdout1_17ck113 = 0 time = 570
* CHECK dout1_18 vdout1_18ck113 = 0 time = 570
* CHECK dout1_0 vdout1_0ck114 = 0 time = 575
* CHECK dout1_1 vdout1_1ck114 = 0 time = 575
* CHECK dout1_2 vdout1_2ck114 = 0 time = 575
* CHECK dout1_3 vdout1_3ck114 = 0 time = 575
* CHECK dout1_4 vdout1_4ck114 = 0 time = 575
* CHECK dout1_5 vdout1_5ck114 = 0 time = 575
* CHECK dout1_6 vdout1_6ck114 = 0 time = 575
* CHECK dout1_7 vdout1_7ck114 = 0 time = 575
* CHECK dout1_8 vdout1_8ck114 = 0 time = 575
* CHECK dout1_9 vdout1_9ck114 = 1.0 time = 575
* CHECK dout1_10 vdout1_10ck114 = 1.0 time = 575
* CHECK dout1_11 vdout1_11ck114 = 1.0 time = 575
* CHECK dout1_12 vdout1_12ck114 = 1.0 time = 575
* CHECK dout1_13 vdout1_13ck114 = 1.0 time = 575
* CHECK dout1_14 vdout1_14ck114 = 1.0 time = 575
* CHECK dout1_15 vdout1_15ck114 = 1.0 time = 575
* CHECK dout1_16 vdout1_16ck114 = 1.0 time = 575
* CHECK dout1_17 vdout1_17ck114 = 0 time = 575
* CHECK dout1_18 vdout1_18ck114 = 1.0 time = 575
* CHECK dout1_0 vdout1_0ck115 = 0 time = 580
* CHECK dout1_1 vdout1_1ck115 = 1.0 time = 580
* CHECK dout1_2 vdout1_2ck115 = 1.0 time = 580
* CHECK dout1_3 vdout1_3ck115 = 1.0 time = 580
* CHECK dout1_4 vdout1_4ck115 = 0 time = 580
* CHECK dout1_5 vdout1_5ck115 = 0 time = 580
* CHECK dout1_6 vdout1_6ck115 = 1.0 time = 580
* CHECK dout1_7 vdout1_7ck115 = 1.0 time = 580
* CHECK dout1_8 vdout1_8ck115 = 0 time = 580
* CHECK dout1_9 vdout1_9ck115 = 1.0 time = 580
* CHECK dout1_10 vdout1_10ck115 = 0 time = 580
* CHECK dout1_11 vdout1_11ck115 = 1.0 time = 580
* CHECK dout1_12 vdout1_12ck115 = 0 time = 580
* CHECK dout1_13 vdout1_13ck115 = 0 time = 580
* CHECK dout1_14 vdout1_14ck115 = 1.0 time = 580
* CHECK dout1_15 vdout1_15ck115 = 0 time = 580
* CHECK dout1_16 vdout1_16ck115 = 0 time = 580
* CHECK dout1_17 vdout1_17ck115 = 1.0 time = 580
* CHECK dout1_18 vdout1_18ck115 = 0 time = 580
* CHECK dout1_0 vdout1_0ck116 = 1.0 time = 585
* CHECK dout1_1 vdout1_1ck116 = 0 time = 585
* CHECK dout1_2 vdout1_2ck116 = 0 time = 585
* CHECK dout1_3 vdout1_3ck116 = 1.0 time = 585
* CHECK dout1_4 vdout1_4ck116 = 1.0 time = 585
* CHECK dout1_5 vdout1_5ck116 = 1.0 time = 585
* CHECK dout1_6 vdout1_6ck116 = 1.0 time = 585
* CHECK dout1_7 vdout1_7ck116 = 0 time = 585
* CHECK dout1_8 vdout1_8ck116 = 0 time = 585
* CHECK dout1_9 vdout1_9ck116 = 1.0 time = 585
* CHECK dout1_10 vdout1_10ck116 = 1.0 time = 585
* CHECK dout1_11 vdout1_11ck116 = 0 time = 585
* CHECK dout1_12 vdout1_12ck116 = 0 time = 585
* CHECK dout1_13 vdout1_13ck116 = 0 time = 585
* CHECK dout1_14 vdout1_14ck116 = 1.0 time = 585
* CHECK dout1_15 vdout1_15ck116 = 0 time = 585
* CHECK dout1_16 vdout1_16ck116 = 1.0 time = 585
* CHECK dout1_17 vdout1_17ck116 = 0 time = 585
* CHECK dout1_18 vdout1_18ck116 = 0 time = 585
* CHECK dout1_0 vdout1_0ck117 = 0 time = 590
* CHECK dout1_1 vdout1_1ck117 = 0 time = 590
* CHECK dout1_2 vdout1_2ck117 = 0 time = 590
* CHECK dout1_3 vdout1_3ck117 = 0 time = 590
* CHECK dout1_4 vdout1_4ck117 = 0 time = 590
* CHECK dout1_5 vdout1_5ck117 = 0 time = 590
* CHECK dout1_6 vdout1_6ck117 = 0 time = 590
* CHECK dout1_7 vdout1_7ck117 = 0 time = 590
* CHECK dout1_8 vdout1_8ck117 = 0 time = 590
* CHECK dout1_9 vdout1_9ck117 = 1.0 time = 590
* CHECK dout1_10 vdout1_10ck117 = 1.0 time = 590
* CHECK dout1_11 vdout1_11ck117 = 1.0 time = 590
* CHECK dout1_12 vdout1_12ck117 = 1.0 time = 590
* CHECK dout1_13 vdout1_13ck117 = 1.0 time = 590
* CHECK dout1_14 vdout1_14ck117 = 1.0 time = 590
* CHECK dout1_15 vdout1_15ck117 = 1.0 time = 590
* CHECK dout1_16 vdout1_16ck117 = 1.0 time = 590
* CHECK dout1_17 vdout1_17ck117 = 0 time = 590
* CHECK dout1_18 vdout1_18ck117 = 1.0 time = 590
* CHECK dout1_0 vdout1_0ck118 = 0 time = 595
* CHECK dout1_1 vdout1_1ck118 = 1.0 time = 595
* CHECK dout1_2 vdout1_2ck118 = 1.0 time = 595
* CHECK dout1_3 vdout1_3ck118 = 1.0 time = 595
* CHECK dout1_4 vdout1_4ck118 = 0 time = 595
* CHECK dout1_5 vdout1_5ck118 = 0 time = 595
* CHECK dout1_6 vdout1_6ck118 = 1.0 time = 595
* CHECK dout1_7 vdout1_7ck118 = 1.0 time = 595
* CHECK dout1_8 vdout1_8ck118 = 0 time = 595
* CHECK dout1_9 vdout1_9ck118 = 1.0 time = 595
* CHECK dout1_10 vdout1_10ck118 = 0 time = 595
* CHECK dout1_11 vdout1_11ck118 = 1.0 time = 595
* CHECK dout1_12 vdout1_12ck118 = 0 time = 595
* CHECK dout1_13 vdout1_13ck118 = 0 time = 595
* CHECK dout1_14 vdout1_14ck118 = 1.0 time = 595
* CHECK dout1_15 vdout1_15ck118 = 0 time = 595
* CHECK dout1_16 vdout1_16ck118 = 0 time = 595
* CHECK dout1_17 vdout1_17ck118 = 1.0 time = 595
* CHECK dout1_18 vdout1_18ck118 = 0 time = 595
* CHECK dout1_0 vdout1_0ck119 = 0 time = 600
* CHECK dout1_1 vdout1_1ck119 = 0 time = 600
* CHECK dout1_2 vdout1_2ck119 = 0 time = 600
* CHECK dout1_3 vdout1_3ck119 = 0 time = 600
* CHECK dout1_4 vdout1_4ck119 = 0 time = 600
* CHECK dout1_5 vdout1_5ck119 = 0 time = 600
* CHECK dout1_6 vdout1_6ck119 = 0 time = 600
* CHECK dout1_7 vdout1_7ck119 = 0 time = 600
* CHECK dout1_8 vdout1_8ck119 = 0 time = 600
* CHECK dout1_9 vdout1_9ck119 = 1.0 time = 600
* CHECK dout1_10 vdout1_10ck119 = 1.0 time = 600
* CHECK dout1_11 vdout1_11ck119 = 1.0 time = 600
* CHECK dout1_12 vdout1_12ck119 = 1.0 time = 600
* CHECK dout1_13 vdout1_13ck119 = 1.0 time = 600
* CHECK dout1_14 vdout1_14ck119 = 1.0 time = 600
* CHECK dout1_15 vdout1_15ck119 = 1.0 time = 600
* CHECK dout1_16 vdout1_16ck119 = 1.0 time = 600
* CHECK dout1_17 vdout1_17ck119 = 0 time = 600
* CHECK dout1_18 vdout1_18ck119 = 1.0 time = 600
* CHECK dout1_0 vdout1_0ck120 = 1.0 time = 605
* CHECK dout1_1 vdout1_1ck120 = 0 time = 605
* CHECK dout1_2 vdout1_2ck120 = 1.0 time = 605
* CHECK dout1_3 vdout1_3ck120 = 0 time = 605
* CHECK dout1_4 vdout1_4ck120 = 0 time = 605
* CHECK dout1_5 vdout1_5ck120 = 1.0 time = 605
* CHECK dout1_6 vdout1_6ck120 = 0 time = 605
* CHECK dout1_7 vdout1_7ck120 = 0 time = 605
* CHECK dout1_8 vdout1_8ck120 = 1.0 time = 605
* CHECK dout1_9 vdout1_9ck120 = 0 time = 605
* CHECK dout1_10 vdout1_10ck120 = 1.0 time = 605
* CHECK dout1_11 vdout1_11ck120 = 0 time = 605
* CHECK dout1_12 vdout1_12ck120 = 1.0 time = 605
* CHECK dout1_13 vdout1_13ck120 = 1.0 time = 605
* CHECK dout1_14 vdout1_14ck120 = 0 time = 605
* CHECK dout1_15 vdout1_15ck120 = 1.0 time = 605
* CHECK dout1_16 vdout1_16ck120 = 0 time = 605
* CHECK dout1_17 vdout1_17ck120 = 1.0 time = 605
* CHECK dout1_18 vdout1_18ck120 = 1.0 time = 605
* CHECK dout1_0 vdout1_0ck121 = 1.0 time = 610
* CHECK dout1_1 vdout1_1ck121 = 0 time = 610
* CHECK dout1_2 vdout1_2ck121 = 1.0 time = 610
* CHECK dout1_3 vdout1_3ck121 = 0 time = 610
* CHECK dout1_4 vdout1_4ck121 = 0 time = 610
* CHECK dout1_5 vdout1_5ck121 = 1.0 time = 610
* CHECK dout1_6 vdout1_6ck121 = 0 time = 610
* CHECK dout1_7 vdout1_7ck121 = 0 time = 610
* CHECK dout1_8 vdout1_8ck121 = 1.0 time = 610
* CHECK dout1_9 vdout1_9ck121 = 0 time = 610
* CHECK dout1_10 vdout1_10ck121 = 1.0 time = 610
* CHECK dout1_11 vdout1_11ck121 = 0 time = 610
* CHECK dout1_12 vdout1_12ck121 = 1.0 time = 610
* CHECK dout1_13 vdout1_13ck121 = 1.0 time = 610
* CHECK dout1_14 vdout1_14ck121 = 0 time = 610
* CHECK dout1_15 vdout1_15ck121 = 1.0 time = 610
* CHECK dout1_16 vdout1_16ck121 = 0 time = 610
* CHECK dout1_17 vdout1_17ck121 = 1.0 time = 610
* CHECK dout1_18 vdout1_18ck121 = 1.0 time = 610
* CHECK dout1_0 vdout1_0ck122 = 1.0 time = 615
* CHECK dout1_1 vdout1_1ck122 = 0 time = 615
* CHECK dout1_2 vdout1_2ck122 = 1.0 time = 615
* CHECK dout1_3 vdout1_3ck122 = 0 time = 615
* CHECK dout1_4 vdout1_4ck122 = 0 time = 615
* CHECK dout1_5 vdout1_5ck122 = 1.0 time = 615
* CHECK dout1_6 vdout1_6ck122 = 0 time = 615
* CHECK dout1_7 vdout1_7ck122 = 0 time = 615
* CHECK dout1_8 vdout1_8ck122 = 1.0 time = 615
* CHECK dout1_9 vdout1_9ck122 = 0 time = 615
* CHECK dout1_10 vdout1_10ck122 = 1.0 time = 615
* CHECK dout1_11 vdout1_11ck122 = 0 time = 615
* CHECK dout1_12 vdout1_12ck122 = 1.0 time = 615
* CHECK dout1_13 vdout1_13ck122 = 1.0 time = 615
* CHECK dout1_14 vdout1_14ck122 = 0 time = 615
* CHECK dout1_15 vdout1_15ck122 = 1.0 time = 615
* CHECK dout1_16 vdout1_16ck122 = 0 time = 615
* CHECK dout1_17 vdout1_17ck122 = 1.0 time = 615
* CHECK dout1_18 vdout1_18ck122 = 1.0 time = 615
* CHECK dout1_0 vdout1_0ck123 = 0 time = 620
* CHECK dout1_1 vdout1_1ck123 = 1.0 time = 620
* CHECK dout1_2 vdout1_2ck123 = 0 time = 620
* CHECK dout1_3 vdout1_3ck123 = 1.0 time = 620
* CHECK dout1_4 vdout1_4ck123 = 1.0 time = 620
* CHECK dout1_5 vdout1_5ck123 = 1.0 time = 620
* CHECK dout1_6 vdout1_6ck123 = 0 time = 620
* CHECK dout1_7 vdout1_7ck123 = 0 time = 620
* CHECK dout1_8 vdout1_8ck123 = 1.0 time = 620
* CHECK dout1_9 vdout1_9ck123 = 1.0 time = 620
* CHECK dout1_10 vdout1_10ck123 = 0 time = 620
* CHECK dout1_11 vdout1_11ck123 = 0 time = 620
* CHECK dout1_12 vdout1_12ck123 = 0 time = 620
* CHECK dout1_13 vdout1_13ck123 = 0 time = 620
* CHECK dout1_14 vdout1_14ck123 = 0 time = 620
* CHECK dout1_15 vdout1_15ck123 = 0 time = 620
* CHECK dout1_16 vdout1_16ck123 = 0 time = 620
* CHECK dout1_17 vdout1_17ck123 = 1.0 time = 620
* CHECK dout1_18 vdout1_18ck123 = 1.0 time = 620
* CHECK dout1_0 vdout1_0ck124 = 1.0 time = 625
* CHECK dout1_1 vdout1_1ck124 = 0 time = 625
* CHECK dout1_2 vdout1_2ck124 = 1.0 time = 625
* CHECK dout1_3 vdout1_3ck124 = 1.0 time = 625
* CHECK dout1_4 vdout1_4ck124 = 0 time = 625
* CHECK dout1_5 vdout1_5ck124 = 0 time = 625
* CHECK dout1_6 vdout1_6ck124 = 1.0 time = 625
* CHECK dout1_7 vdout1_7ck124 = 1.0 time = 625
* CHECK dout1_8 vdout1_8ck124 = 0 time = 625
* CHECK dout1_9 vdout1_9ck124 = 1.0 time = 625
* CHECK dout1_10 vdout1_10ck124 = 1.0 time = 625
* CHECK dout1_11 vdout1_11ck124 = 0 time = 625
* CHECK dout1_12 vdout1_12ck124 = 1.0 time = 625
* CHECK dout1_13 vdout1_13ck124 = 1.0 time = 625
* CHECK dout1_14 vdout1_14ck124 = 0 time = 625
* CHECK dout1_15 vdout1_15ck124 = 1.0 time = 625
* CHECK dout1_16 vdout1_16ck124 = 1.0 time = 625
* CHECK dout1_17 vdout1_17ck124 = 0 time = 625
* CHECK dout1_18 vdout1_18ck124 = 1.0 time = 625
* CHECK dout1_0 vdout1_0ck125 = 1.0 time = 630
* CHECK dout1_1 vdout1_1ck125 = 0 time = 630
* CHECK dout1_2 vdout1_2ck125 = 1.0 time = 630
* CHECK dout1_3 vdout1_3ck125 = 0 time = 630
* CHECK dout1_4 vdout1_4ck125 = 0 time = 630
* CHECK dout1_5 vdout1_5ck125 = 1.0 time = 630
* CHECK dout1_6 vdout1_6ck125 = 0 time = 630
* CHECK dout1_7 vdout1_7ck125 = 0 time = 630
* CHECK dout1_8 vdout1_8ck125 = 1.0 time = 630
* CHECK dout1_9 vdout1_9ck125 = 0 time = 630
* CHECK dout1_10 vdout1_10ck125 = 1.0 time = 630
* CHECK dout1_11 vdout1_11ck125 = 0 time = 630
* CHECK dout1_12 vdout1_12ck125 = 1.0 time = 630
* CHECK dout1_13 vdout1_13ck125 = 1.0 time = 630
* CHECK dout1_14 vdout1_14ck125 = 0 time = 630
* CHECK dout1_15 vdout1_15ck125 = 1.0 time = 630
* CHECK dout1_16 vdout1_16ck125 = 0 time = 630
* CHECK dout1_17 vdout1_17ck125 = 1.0 time = 630
* CHECK dout1_18 vdout1_18ck125 = 1.0 time = 630
* CHECK dout1_0 vdout1_0ck127 = 1.0 time = 640
* CHECK dout1_1 vdout1_1ck127 = 0 time = 640
* CHECK dout1_2 vdout1_2ck127 = 1.0 time = 640
* CHECK dout1_3 vdout1_3ck127 = 1.0 time = 640
* CHECK dout1_4 vdout1_4ck127 = 0 time = 640
* CHECK dout1_5 vdout1_5ck127 = 0 time = 640
* CHECK dout1_6 vdout1_6ck127 = 1.0 time = 640
* CHECK dout1_7 vdout1_7ck127 = 1.0 time = 640
* CHECK dout1_8 vdout1_8ck127 = 0 time = 640
* CHECK dout1_9 vdout1_9ck127 = 1.0 time = 640
* CHECK dout1_10 vdout1_10ck127 = 1.0 time = 640
* CHECK dout1_11 vdout1_11ck127 = 0 time = 640
* CHECK dout1_12 vdout1_12ck127 = 1.0 time = 640
* CHECK dout1_13 vdout1_13ck127 = 1.0 time = 640
* CHECK dout1_14 vdout1_14ck127 = 0 time = 640
* CHECK dout1_15 vdout1_15ck127 = 1.0 time = 640
* CHECK dout1_16 vdout1_16ck127 = 1.0 time = 640
* CHECK dout1_17 vdout1_17ck127 = 0 time = 640
* CHECK dout1_18 vdout1_18ck127 = 1.0 time = 640
* CHECK dout1_0 vdout1_0ck130 = 1.0 time = 655
* CHECK dout1_1 vdout1_1ck130 = 0 time = 655
* CHECK dout1_2 vdout1_2ck130 = 1.0 time = 655
* CHECK dout1_3 vdout1_3ck130 = 1.0 time = 655
* CHECK dout1_4 vdout1_4ck130 = 0 time = 655
* CHECK dout1_5 vdout1_5ck130 = 0 time = 655
* CHECK dout1_6 vdout1_6ck130 = 1.0 time = 655
* CHECK dout1_7 vdout1_7ck130 = 1.0 time = 655
* CHECK dout1_8 vdout1_8ck130 = 0 time = 655
* CHECK dout1_9 vdout1_9ck130 = 1.0 time = 655
* CHECK dout1_10 vdout1_10ck130 = 1.0 time = 655
* CHECK dout1_11 vdout1_11ck130 = 0 time = 655
* CHECK dout1_12 vdout1_12ck130 = 1.0 time = 655
* CHECK dout1_13 vdout1_13ck130 = 1.0 time = 655
* CHECK dout1_14 vdout1_14ck130 = 0 time = 655
* CHECK dout1_15 vdout1_15ck130 = 1.0 time = 655
* CHECK dout1_16 vdout1_16ck130 = 1.0 time = 655
* CHECK dout1_17 vdout1_17ck130 = 0 time = 655
* CHECK dout1_18 vdout1_18ck130 = 1.0 time = 655
* CHECK dout1_0 vdout1_0ck131 = 1.0 time = 660
* CHECK dout1_1 vdout1_1ck131 = 0 time = 660
* CHECK dout1_2 vdout1_2ck131 = 0 time = 660
* CHECK dout1_3 vdout1_3ck131 = 1.0 time = 660
* CHECK dout1_4 vdout1_4ck131 = 0 time = 660
* CHECK dout1_5 vdout1_5ck131 = 1.0 time = 660
* CHECK dout1_6 vdout1_6ck131 = 0 time = 660
* CHECK dout1_7 vdout1_7ck131 = 1.0 time = 660
* CHECK dout1_8 vdout1_8ck131 = 1.0 time = 660
* CHECK dout1_9 vdout1_9ck131 = 1.0 time = 660
* CHECK dout1_10 vdout1_10ck131 = 0 time = 660
* CHECK dout1_11 vdout1_11ck131 = 1.0 time = 660
* CHECK dout1_12 vdout1_12ck131 = 0 time = 660
* CHECK dout1_13 vdout1_13ck131 = 0 time = 660
* CHECK dout1_14 vdout1_14ck131 = 0 time = 660
* CHECK dout1_15 vdout1_15ck131 = 1.0 time = 660
* CHECK dout1_16 vdout1_16ck131 = 0 time = 660
* CHECK dout1_17 vdout1_17ck131 = 0 time = 660
* CHECK dout1_18 vdout1_18ck131 = 1.0 time = 660
* CHECK dout1_0 vdout1_0ck134 = 1.0 time = 675
* CHECK dout1_1 vdout1_1ck134 = 0 time = 675
* CHECK dout1_2 vdout1_2ck134 = 0 time = 675
* CHECK dout1_3 vdout1_3ck134 = 1.0 time = 675
* CHECK dout1_4 vdout1_4ck134 = 0 time = 675
* CHECK dout1_5 vdout1_5ck134 = 1.0 time = 675
* CHECK dout1_6 vdout1_6ck134 = 0 time = 675
* CHECK dout1_7 vdout1_7ck134 = 1.0 time = 675
* CHECK dout1_8 vdout1_8ck134 = 1.0 time = 675
* CHECK dout1_9 vdout1_9ck134 = 1.0 time = 675
* CHECK dout1_10 vdout1_10ck134 = 0 time = 675
* CHECK dout1_11 vdout1_11ck134 = 1.0 time = 675
* CHECK dout1_12 vdout1_12ck134 = 0 time = 675
* CHECK dout1_13 vdout1_13ck134 = 0 time = 675
* CHECK dout1_14 vdout1_14ck134 = 0 time = 675
* CHECK dout1_15 vdout1_15ck134 = 1.0 time = 675
* CHECK dout1_16 vdout1_16ck134 = 0 time = 675
* CHECK dout1_17 vdout1_17ck134 = 0 time = 675
* CHECK dout1_18 vdout1_18ck134 = 1.0 time = 675
* CHECK dout1_0 vdout1_0ck135 = 0 time = 680
* CHECK dout1_1 vdout1_1ck135 = 1.0 time = 680
* CHECK dout1_2 vdout1_2ck135 = 0 time = 680
* CHECK dout1_3 vdout1_3ck135 = 1.0 time = 680
* CHECK dout1_4 vdout1_4ck135 = 1.0 time = 680
* CHECK dout1_5 vdout1_5ck135 = 1.0 time = 680
* CHECK dout1_6 vdout1_6ck135 = 0 time = 680
* CHECK dout1_7 vdout1_7ck135 = 0 time = 680
* CHECK dout1_8 vdout1_8ck135 = 1.0 time = 680
* CHECK dout1_9 vdout1_9ck135 = 1.0 time = 680
* CHECK dout1_10 vdout1_10ck135 = 0 time = 680
* CHECK dout1_11 vdout1_11ck135 = 0 time = 680
* CHECK dout1_12 vdout1_12ck135 = 0 time = 680
* CHECK dout1_13 vdout1_13ck135 = 0 time = 680
* CHECK dout1_14 vdout1_14ck135 = 0 time = 680
* CHECK dout1_15 vdout1_15ck135 = 0 time = 680
* CHECK dout1_16 vdout1_16ck135 = 0 time = 680
* CHECK dout1_17 vdout1_17ck135 = 1.0 time = 680
* CHECK dout1_18 vdout1_18ck135 = 1.0 time = 680
* CHECK dout1_0 vdout1_0ck137 = 1.0 time = 690
* CHECK dout1_1 vdout1_1ck137 = 1.0 time = 690
* CHECK dout1_2 vdout1_2ck137 = 0 time = 690
* CHECK dout1_3 vdout1_3ck137 = 0 time = 690
* CHECK dout1_4 vdout1_4ck137 = 0 time = 690
* CHECK dout1_5 vdout1_5ck137 = 1.0 time = 690
* CHECK dout1_6 vdout1_6ck137 = 0 time = 690
* CHECK dout1_7 vdout1_7ck137 = 1.0 time = 690
* CHECK dout1_8 vdout1_8ck137 = 1.0 time = 690
* CHECK dout1_9 vdout1_9ck137 = 0 time = 690
* CHECK dout1_10 vdout1_10ck137 = 1.0 time = 690
* CHECK dout1_11 vdout1_11ck137 = 1.0 time = 690
* CHECK dout1_12 vdout1_12ck137 = 1.0 time = 690
* CHECK dout1_13 vdout1_13ck137 = 0 time = 690
* CHECK dout1_14 vdout1_14ck137 = 0 time = 690
* CHECK dout1_15 vdout1_15ck137 = 1.0 time = 690
* CHECK dout1_16 vdout1_16ck137 = 1.0 time = 690
* CHECK dout1_17 vdout1_17ck137 = 1.0 time = 690
* CHECK dout1_18 vdout1_18ck137 = 0 time = 690
* CHECK dout1_0 vdout1_0ck141 = 1.0 time = 710
* CHECK dout1_1 vdout1_1ck141 = 1.0 time = 710
* CHECK dout1_2 vdout1_2ck141 = 0 time = 710
* CHECK dout1_3 vdout1_3ck141 = 0 time = 710
* CHECK dout1_4 vdout1_4ck141 = 0 time = 710
* CHECK dout1_5 vdout1_5ck141 = 1.0 time = 710
* CHECK dout1_6 vdout1_6ck141 = 0 time = 710
* CHECK dout1_7 vdout1_7ck141 = 1.0 time = 710
* CHECK dout1_8 vdout1_8ck141 = 1.0 time = 710
* CHECK dout1_9 vdout1_9ck141 = 0 time = 710
* CHECK dout1_10 vdout1_10ck141 = 1.0 time = 710
* CHECK dout1_11 vdout1_11ck141 = 1.0 time = 710
* CHECK dout1_12 vdout1_12ck141 = 1.0 time = 710
* CHECK dout1_13 vdout1_13ck141 = 0 time = 710
* CHECK dout1_14 vdout1_14ck141 = 0 time = 710
* CHECK dout1_15 vdout1_15ck141 = 1.0 time = 710
* CHECK dout1_16 vdout1_16ck141 = 1.0 time = 710
* CHECK dout1_17 vdout1_17ck141 = 1.0 time = 710
* CHECK dout1_18 vdout1_18ck141 = 0 time = 710
* CHECK dout1_0 vdout1_0ck143 = 1.0 time = 720
* CHECK dout1_1 vdout1_1ck143 = 1.0 time = 720
* CHECK dout1_2 vdout1_2ck143 = 1.0 time = 720
* CHECK dout1_3 vdout1_3ck143 = 0 time = 720
* CHECK dout1_4 vdout1_4ck143 = 0 time = 720
* CHECK dout1_5 vdout1_5ck143 = 1.0 time = 720
* CHECK dout1_6 vdout1_6ck143 = 1.0 time = 720
* CHECK dout1_7 vdout1_7ck143 = 1.0 time = 720
* CHECK dout1_8 vdout1_8ck143 = 1.0 time = 720
* CHECK dout1_9 vdout1_9ck143 = 1.0 time = 720
* CHECK dout1_10 vdout1_10ck143 = 1.0 time = 720
* CHECK dout1_11 vdout1_11ck143 = 1.0 time = 720
* CHECK dout1_12 vdout1_12ck143 = 0 time = 720
* CHECK dout1_13 vdout1_13ck143 = 0 time = 720
* CHECK dout1_14 vdout1_14ck143 = 1.0 time = 720
* CHECK dout1_15 vdout1_15ck143 = 0 time = 720
* CHECK dout1_16 vdout1_16ck143 = 0 time = 720
* CHECK dout1_17 vdout1_17ck143 = 0 time = 720
* CHECK dout1_18 vdout1_18ck143 = 0 time = 720
* CHECK dout1_0 vdout1_0ck144 = 1.0 time = 725
* CHECK dout1_1 vdout1_1ck144 = 0 time = 725
* CHECK dout1_2 vdout1_2ck144 = 0 time = 725
* CHECK dout1_3 vdout1_3ck144 = 1.0 time = 725
* CHECK dout1_4 vdout1_4ck144 = 0 time = 725
* CHECK dout1_5 vdout1_5ck144 = 0 time = 725
* CHECK dout1_6 vdout1_6ck144 = 1.0 time = 725
* CHECK dout1_7 vdout1_7ck144 = 0 time = 725
* CHECK dout1_8 vdout1_8ck144 = 0 time = 725
* CHECK dout1_9 vdout1_9ck144 = 1.0 time = 725
* CHECK dout1_10 vdout1_10ck144 = 1.0 time = 725
* CHECK dout1_11 vdout1_11ck144 = 1.0 time = 725
* CHECK dout1_12 vdout1_12ck144 = 0 time = 725
* CHECK dout1_13 vdout1_13ck144 = 0 time = 725
* CHECK dout1_14 vdout1_14ck144 = 0 time = 725
* CHECK dout1_15 vdout1_15ck144 = 1.0 time = 725
* CHECK dout1_16 vdout1_16ck144 = 1.0 time = 725
* CHECK dout1_17 vdout1_17ck144 = 0 time = 725
* CHECK dout1_18 vdout1_18ck144 = 1.0 time = 725
* CHECK dout1_0 vdout1_0ck146 = 0 time = 735
* CHECK dout1_1 vdout1_1ck146 = 0 time = 735
* CHECK dout1_2 vdout1_2ck146 = 0 time = 735
* CHECK dout1_3 vdout1_3ck146 = 1.0 time = 735
* CHECK dout1_4 vdout1_4ck146 = 1.0 time = 735
* CHECK dout1_5 vdout1_5ck146 = 0 time = 735
* CHECK dout1_6 vdout1_6ck146 = 0 time = 735
* CHECK dout1_7 vdout1_7ck146 = 0 time = 735
* CHECK dout1_8 vdout1_8ck146 = 0 time = 735
* CHECK dout1_9 vdout1_9ck146 = 0 time = 735
* CHECK dout1_10 vdout1_10ck146 = 1.0 time = 735
* CHECK dout1_11 vdout1_11ck146 = 0 time = 735
* CHECK dout1_12 vdout1_12ck146 = 0 time = 735
* CHECK dout1_13 vdout1_13ck146 = 0 time = 735
* CHECK dout1_14 vdout1_14ck146 = 1.0 time = 735
* CHECK dout1_15 vdout1_15ck146 = 1.0 time = 735
* CHECK dout1_16 vdout1_16ck146 = 1.0 time = 735
* CHECK dout1_17 vdout1_17ck146 = 0 time = 735
* CHECK dout1_18 vdout1_18ck146 = 1.0 time = 735
* CHECK dout1_0 vdout1_0ck150 = 0 time = 755
* CHECK dout1_1 vdout1_1ck150 = 0 time = 755
* CHECK dout1_2 vdout1_2ck150 = 1.0 time = 755
* CHECK dout1_3 vdout1_3ck150 = 0 time = 755
* CHECK dout1_4 vdout1_4ck150 = 0 time = 755
* CHECK dout1_5 vdout1_5ck150 = 0 time = 755
* CHECK dout1_6 vdout1_6ck150 = 0 time = 755
* CHECK dout1_7 vdout1_7ck150 = 0 time = 755
* CHECK dout1_8 vdout1_8ck150 = 0 time = 755
* CHECK dout1_9 vdout1_9ck150 = 1.0 time = 755
* CHECK dout1_10 vdout1_10ck150 = 0 time = 755
* CHECK dout1_11 vdout1_11ck150 = 1.0 time = 755
* CHECK dout1_12 vdout1_12ck150 = 1.0 time = 755
* CHECK dout1_13 vdout1_13ck150 = 1.0 time = 755
* CHECK dout1_14 vdout1_14ck150 = 0 time = 755
* CHECK dout1_15 vdout1_15ck150 = 0 time = 755
* CHECK dout1_16 vdout1_16ck150 = 1.0 time = 755
* CHECK dout1_17 vdout1_17ck150 = 1.0 time = 755
* CHECK dout1_18 vdout1_18ck150 = 1.0 time = 755
* CHECK dout1_0 vdout1_0ck152 = 0 time = 765
* CHECK dout1_1 vdout1_1ck152 = 0 time = 765
* CHECK dout1_2 vdout1_2ck152 = 0 time = 765
* CHECK dout1_3 vdout1_3ck152 = 1.0 time = 765
* CHECK dout1_4 vdout1_4ck152 = 0 time = 765
* CHECK dout1_5 vdout1_5ck152 = 1.0 time = 765
* CHECK dout1_6 vdout1_6ck152 = 1.0 time = 765
* CHECK dout1_7 vdout1_7ck152 = 1.0 time = 765
* CHECK dout1_8 vdout1_8ck152 = 0 time = 765
* CHECK dout1_9 vdout1_9ck152 = 1.0 time = 765
* CHECK dout1_10 vdout1_10ck152 = 1.0 time = 765
* CHECK dout1_11 vdout1_11ck152 = 1.0 time = 765
* CHECK dout1_12 vdout1_12ck152 = 1.0 time = 765
* CHECK dout1_13 vdout1_13ck152 = 0 time = 765
* CHECK dout1_14 vdout1_14ck152 = 0 time = 765
* CHECK dout1_15 vdout1_15ck152 = 1.0 time = 765
* CHECK dout1_16 vdout1_16ck152 = 1.0 time = 765
* CHECK dout1_17 vdout1_17ck152 = 1.0 time = 765
* CHECK dout1_18 vdout1_18ck152 = 1.0 time = 765
* CHECK dout1_0 vdout1_0ck153 = 0 time = 770
* CHECK dout1_1 vdout1_1ck153 = 0 time = 770
* CHECK dout1_2 vdout1_2ck153 = 1.0 time = 770
* CHECK dout1_3 vdout1_3ck153 = 0 time = 770
* CHECK dout1_4 vdout1_4ck153 = 0 time = 770
* CHECK dout1_5 vdout1_5ck153 = 0 time = 770
* CHECK dout1_6 vdout1_6ck153 = 0 time = 770
* CHECK dout1_7 vdout1_7ck153 = 0 time = 770
* CHECK dout1_8 vdout1_8ck153 = 0 time = 770
* CHECK dout1_9 vdout1_9ck153 = 1.0 time = 770
* CHECK dout1_10 vdout1_10ck153 = 0 time = 770
* CHECK dout1_11 vdout1_11ck153 = 1.0 time = 770
* CHECK dout1_12 vdout1_12ck153 = 1.0 time = 770
* CHECK dout1_13 vdout1_13ck153 = 1.0 time = 770
* CHECK dout1_14 vdout1_14ck153 = 0 time = 770
* CHECK dout1_15 vdout1_15ck153 = 0 time = 770
* CHECK dout1_16 vdout1_16ck153 = 1.0 time = 770
* CHECK dout1_17 vdout1_17ck153 = 1.0 time = 770
* CHECK dout1_18 vdout1_18ck153 = 1.0 time = 770
* CHECK dout1_0 vdout1_0ck154 = 0 time = 775
* CHECK dout1_1 vdout1_1ck154 = 0 time = 775
* CHECK dout1_2 vdout1_2ck154 = 1.0 time = 775
* CHECK dout1_3 vdout1_3ck154 = 0 time = 775
* CHECK dout1_4 vdout1_4ck154 = 0 time = 775
* CHECK dout1_5 vdout1_5ck154 = 0 time = 775
* CHECK dout1_6 vdout1_6ck154 = 0 time = 775
* CHECK dout1_7 vdout1_7ck154 = 0 time = 775
* CHECK dout1_8 vdout1_8ck154 = 0 time = 775
* CHECK dout1_9 vdout1_9ck154 = 1.0 time = 775
* CHECK dout1_10 vdout1_10ck154 = 0 time = 775
* CHECK dout1_11 vdout1_11ck154 = 1.0 time = 775
* CHECK dout1_12 vdout1_12ck154 = 1.0 time = 775
* CHECK dout1_13 vdout1_13ck154 = 1.0 time = 775
* CHECK dout1_14 vdout1_14ck154 = 0 time = 775
* CHECK dout1_15 vdout1_15ck154 = 0 time = 775
* CHECK dout1_16 vdout1_16ck154 = 1.0 time = 775
* CHECK dout1_17 vdout1_17ck154 = 1.0 time = 775
* CHECK dout1_18 vdout1_18ck154 = 1.0 time = 775
* CHECK dout1_0 vdout1_0ck161 = 0 time = 810
* CHECK dout1_1 vdout1_1ck161 = 0 time = 810
* CHECK dout1_2 vdout1_2ck161 = 1.0 time = 810
* CHECK dout1_3 vdout1_3ck161 = 0 time = 810
* CHECK dout1_4 vdout1_4ck161 = 0 time = 810
* CHECK dout1_5 vdout1_5ck161 = 0 time = 810
* CHECK dout1_6 vdout1_6ck161 = 0 time = 810
* CHECK dout1_7 vdout1_7ck161 = 0 time = 810
* CHECK dout1_8 vdout1_8ck161 = 0 time = 810
* CHECK dout1_9 vdout1_9ck161 = 1.0 time = 810
* CHECK dout1_10 vdout1_10ck161 = 0 time = 810
* CHECK dout1_11 vdout1_11ck161 = 1.0 time = 810
* CHECK dout1_12 vdout1_12ck161 = 1.0 time = 810
* CHECK dout1_13 vdout1_13ck161 = 1.0 time = 810
* CHECK dout1_14 vdout1_14ck161 = 0 time = 810
* CHECK dout1_15 vdout1_15ck161 = 0 time = 810
* CHECK dout1_16 vdout1_16ck161 = 1.0 time = 810
* CHECK dout1_17 vdout1_17ck161 = 1.0 time = 810
* CHECK dout1_18 vdout1_18ck161 = 1.0 time = 810
* CHECK dout1_0 vdout1_0ck164 = 0 time = 825
* CHECK dout1_1 vdout1_1ck164 = 0 time = 825
* CHECK dout1_2 vdout1_2ck164 = 1.0 time = 825
* CHECK dout1_3 vdout1_3ck164 = 0 time = 825
* CHECK dout1_4 vdout1_4ck164 = 0 time = 825
* CHECK dout1_5 vdout1_5ck164 = 0 time = 825
* CHECK dout1_6 vdout1_6ck164 = 0 time = 825
* CHECK dout1_7 vdout1_7ck164 = 0 time = 825
* CHECK dout1_8 vdout1_8ck164 = 0 time = 825
* CHECK dout1_9 vdout1_9ck164 = 1.0 time = 825
* CHECK dout1_10 vdout1_10ck164 = 0 time = 825
* CHECK dout1_11 vdout1_11ck164 = 1.0 time = 825
* CHECK dout1_12 vdout1_12ck164 = 1.0 time = 825
* CHECK dout1_13 vdout1_13ck164 = 1.0 time = 825
* CHECK dout1_14 vdout1_14ck164 = 0 time = 825
* CHECK dout1_15 vdout1_15ck164 = 0 time = 825
* CHECK dout1_16 vdout1_16ck164 = 1.0 time = 825
* CHECK dout1_17 vdout1_17ck164 = 1.0 time = 825
* CHECK dout1_18 vdout1_18ck164 = 1.0 time = 825
* CHECK dout1_0 vdout1_0ck166 = 0 time = 835
* CHECK dout1_1 vdout1_1ck166 = 1.0 time = 835
* CHECK dout1_2 vdout1_2ck166 = 0 time = 835
* CHECK dout1_3 vdout1_3ck166 = 0 time = 835
* CHECK dout1_4 vdout1_4ck166 = 1.0 time = 835
* CHECK dout1_5 vdout1_5ck166 = 0 time = 835
* CHECK dout1_6 vdout1_6ck166 = 1.0 time = 835
* CHECK dout1_7 vdout1_7ck166 = 1.0 time = 835
* CHECK dout1_8 vdout1_8ck166 = 1.0 time = 835
* CHECK dout1_9 vdout1_9ck166 = 0 time = 835
* CHECK dout1_10 vdout1_10ck166 = 1.0 time = 835
* CHECK dout1_11 vdout1_11ck166 = 0 time = 835
* CHECK dout1_12 vdout1_12ck166 = 1.0 time = 835
* CHECK dout1_13 vdout1_13ck166 = 1.0 time = 835
* CHECK dout1_14 vdout1_14ck166 = 1.0 time = 835
* CHECK dout1_15 vdout1_15ck166 = 1.0 time = 835
* CHECK dout1_16 vdout1_16ck166 = 0 time = 835
* CHECK dout1_17 vdout1_17ck166 = 0 time = 835
* CHECK dout1_18 vdout1_18ck166 = 1.0 time = 835
* CHECK dout1_0 vdout1_0ck173 = 0 time = 870
* CHECK dout1_1 vdout1_1ck173 = 1.0 time = 870
* CHECK dout1_2 vdout1_2ck173 = 0 time = 870
* CHECK dout1_3 vdout1_3ck173 = 0 time = 870
* CHECK dout1_4 vdout1_4ck173 = 1.0 time = 870
* CHECK dout1_5 vdout1_5ck173 = 0 time = 870
* CHECK dout1_6 vdout1_6ck173 = 1.0 time = 870
* CHECK dout1_7 vdout1_7ck173 = 1.0 time = 870
* CHECK dout1_8 vdout1_8ck173 = 1.0 time = 870
* CHECK dout1_9 vdout1_9ck173 = 0 time = 870
* CHECK dout1_10 vdout1_10ck173 = 1.0 time = 870
* CHECK dout1_11 vdout1_11ck173 = 0 time = 870
* CHECK dout1_12 vdout1_12ck173 = 1.0 time = 870
* CHECK dout1_13 vdout1_13ck173 = 1.0 time = 870
* CHECK dout1_14 vdout1_14ck173 = 1.0 time = 870
* CHECK dout1_15 vdout1_15ck173 = 1.0 time = 870
* CHECK dout1_16 vdout1_16ck173 = 0 time = 870
* CHECK dout1_17 vdout1_17ck173 = 0 time = 870
* CHECK dout1_18 vdout1_18ck173 = 1.0 time = 870
* CHECK dout1_0 vdout1_0ck180 = 0 time = 905
* CHECK dout1_1 vdout1_1ck180 = 1.0 time = 905
* CHECK dout1_2 vdout1_2ck180 = 0 time = 905
* CHECK dout1_3 vdout1_3ck180 = 0 time = 905
* CHECK dout1_4 vdout1_4ck180 = 1.0 time = 905
* CHECK dout1_5 vdout1_5ck180 = 0 time = 905
* CHECK dout1_6 vdout1_6ck180 = 1.0 time = 905
* CHECK dout1_7 vdout1_7ck180 = 1.0 time = 905
* CHECK dout1_8 vdout1_8ck180 = 1.0 time = 905
* CHECK dout1_9 vdout1_9ck180 = 0 time = 905
* CHECK dout1_10 vdout1_10ck180 = 1.0 time = 905
* CHECK dout1_11 vdout1_11ck180 = 0 time = 905
* CHECK dout1_12 vdout1_12ck180 = 1.0 time = 905
* CHECK dout1_13 vdout1_13ck180 = 1.0 time = 905
* CHECK dout1_14 vdout1_14ck180 = 1.0 time = 905
* CHECK dout1_15 vdout1_15ck180 = 1.0 time = 905
* CHECK dout1_16 vdout1_16ck180 = 0 time = 905
* CHECK dout1_17 vdout1_17ck180 = 0 time = 905
* CHECK dout1_18 vdout1_18ck180 = 1.0 time = 905
* CHECK dout1_0 vdout1_0ck181 = 0 time = 910
* CHECK dout1_1 vdout1_1ck181 = 1.0 time = 910
* CHECK dout1_2 vdout1_2ck181 = 0 time = 910
* CHECK dout1_3 vdout1_3ck181 = 0 time = 910
* CHECK dout1_4 vdout1_4ck181 = 1.0 time = 910
* CHECK dout1_5 vdout1_5ck181 = 0 time = 910
* CHECK dout1_6 vdout1_6ck181 = 1.0 time = 910
* CHECK dout1_7 vdout1_7ck181 = 1.0 time = 910
* CHECK dout1_8 vdout1_8ck181 = 1.0 time = 910
* CHECK dout1_9 vdout1_9ck181 = 0 time = 910
* CHECK dout1_10 vdout1_10ck181 = 1.0 time = 910
* CHECK dout1_11 vdout1_11ck181 = 0 time = 910
* CHECK dout1_12 vdout1_12ck181 = 1.0 time = 910
* CHECK dout1_13 vdout1_13ck181 = 1.0 time = 910
* CHECK dout1_14 vdout1_14ck181 = 1.0 time = 910
* CHECK dout1_15 vdout1_15ck181 = 1.0 time = 910
* CHECK dout1_16 vdout1_16ck181 = 0 time = 910
* CHECK dout1_17 vdout1_17ck181 = 0 time = 910
* CHECK dout1_18 vdout1_18ck181 = 1.0 time = 910
* CHECK dout1_0 vdout1_0ck183 = 0 time = 920
* CHECK dout1_1 vdout1_1ck183 = 1.0 time = 920
* CHECK dout1_2 vdout1_2ck183 = 0 time = 920
* CHECK dout1_3 vdout1_3ck183 = 0 time = 920
* CHECK dout1_4 vdout1_4ck183 = 1.0 time = 920
* CHECK dout1_5 vdout1_5ck183 = 0 time = 920
* CHECK dout1_6 vdout1_6ck183 = 1.0 time = 920
* CHECK dout1_7 vdout1_7ck183 = 1.0 time = 920
* CHECK dout1_8 vdout1_8ck183 = 1.0 time = 920
* CHECK dout1_9 vdout1_9ck183 = 0 time = 920
* CHECK dout1_10 vdout1_10ck183 = 1.0 time = 920
* CHECK dout1_11 vdout1_11ck183 = 0 time = 920
* CHECK dout1_12 vdout1_12ck183 = 1.0 time = 920
* CHECK dout1_13 vdout1_13ck183 = 1.0 time = 920
* CHECK dout1_14 vdout1_14ck183 = 1.0 time = 920
* CHECK dout1_15 vdout1_15ck183 = 1.0 time = 920
* CHECK dout1_16 vdout1_16ck183 = 0 time = 920
* CHECK dout1_17 vdout1_17ck183 = 0 time = 920
* CHECK dout1_18 vdout1_18ck183 = 1.0 time = 920
* CHECK dout1_0 vdout1_0ck186 = 1.0 time = 935
* CHECK dout1_1 vdout1_1ck186 = 0 time = 935
* CHECK dout1_2 vdout1_2ck186 = 0 time = 935
* CHECK dout1_3 vdout1_3ck186 = 0 time = 935
* CHECK dout1_4 vdout1_4ck186 = 1.0 time = 935
* CHECK dout1_5 vdout1_5ck186 = 1.0 time = 935
* CHECK dout1_6 vdout1_6ck186 = 1.0 time = 935
* CHECK dout1_7 vdout1_7ck186 = 0 time = 935
* CHECK dout1_8 vdout1_8ck186 = 0 time = 935
* CHECK dout1_9 vdout1_9ck186 = 1.0 time = 935
* CHECK dout1_10 vdout1_10ck186 = 1.0 time = 935
* CHECK dout1_11 vdout1_11ck186 = 0 time = 935
* CHECK dout1_12 vdout1_12ck186 = 1.0 time = 935
* CHECK dout1_13 vdout1_13ck186 = 0 time = 935
* CHECK dout1_14 vdout1_14ck186 = 1.0 time = 935
* CHECK dout1_15 vdout1_15ck186 = 0 time = 935
* CHECK dout1_16 vdout1_16ck186 = 1.0 time = 935
* CHECK dout1_17 vdout1_17ck186 = 0 time = 935
* CHECK dout1_18 vdout1_18ck186 = 0 time = 935
* CHECK dout1_0 vdout1_0ck191 = 0 time = 960
* CHECK dout1_1 vdout1_1ck191 = 1.0 time = 960
* CHECK dout1_2 vdout1_2ck191 = 1.0 time = 960
* CHECK dout1_3 vdout1_3ck191 = 1.0 time = 960
* CHECK dout1_4 vdout1_4ck191 = 0 time = 960
* CHECK dout1_5 vdout1_5ck191 = 1.0 time = 960
* CHECK dout1_6 vdout1_6ck191 = 1.0 time = 960
* CHECK dout1_7 vdout1_7ck191 = 0 time = 960
* CHECK dout1_8 vdout1_8ck191 = 1.0 time = 960
* CHECK dout1_9 vdout1_9ck191 = 1.0 time = 960
* CHECK dout1_10 vdout1_10ck191 = 0 time = 960
* CHECK dout1_11 vdout1_11ck191 = 1.0 time = 960
* CHECK dout1_12 vdout1_12ck191 = 1.0 time = 960
* CHECK dout1_13 vdout1_13ck191 = 0 time = 960
* CHECK dout1_14 vdout1_14ck191 = 1.0 time = 960
* CHECK dout1_15 vdout1_15ck191 = 1.0 time = 960
* CHECK dout1_16 vdout1_16ck191 = 0 time = 960
* CHECK dout1_17 vdout1_17ck191 = 0 time = 960
* CHECK dout1_18 vdout1_18ck191 = 0 time = 960
* CHECK dout1_0 vdout1_0ck193 = 0 time = 970
* CHECK dout1_1 vdout1_1ck193 = 1.0 time = 970
* CHECK dout1_2 vdout1_2ck193 = 1.0 time = 970
* CHECK dout1_3 vdout1_3ck193 = 1.0 time = 970
* CHECK dout1_4 vdout1_4ck193 = 0 time = 970
* CHECK dout1_5 vdout1_5ck193 = 1.0 time = 970
* CHECK dout1_6 vdout1_6ck193 = 1.0 time = 970
* CHECK dout1_7 vdout1_7ck193 = 0 time = 970
* CHECK dout1_8 vdout1_8ck193 = 1.0 time = 970
* CHECK dout1_9 vdout1_9ck193 = 1.0 time = 970
* CHECK dout1_10 vdout1_10ck193 = 0 time = 970
* CHECK dout1_11 vdout1_11ck193 = 1.0 time = 970
* CHECK dout1_12 vdout1_12ck193 = 1.0 time = 970
* CHECK dout1_13 vdout1_13ck193 = 0 time = 970
* CHECK dout1_14 vdout1_14ck193 = 1.0 time = 970
* CHECK dout1_15 vdout1_15ck193 = 1.0 time = 970
* CHECK dout1_16 vdout1_16ck193 = 0 time = 970
* CHECK dout1_17 vdout1_17ck193 = 0 time = 970
* CHECK dout1_18 vdout1_18ck193 = 0 time = 970
* CHECK dout1_0 vdout1_0ck194 = 0 time = 975
* CHECK dout1_1 vdout1_1ck194 = 1.0 time = 975
* CHECK dout1_2 vdout1_2ck194 = 1.0 time = 975
* CHECK dout1_3 vdout1_3ck194 = 0 time = 975
* CHECK dout1_4 vdout1_4ck194 = 0 time = 975
* CHECK dout1_5 vdout1_5ck194 = 0 time = 975
* CHECK dout1_6 vdout1_6ck194 = 0 time = 975
* CHECK dout1_7 vdout1_7ck194 = 0 time = 975
* CHECK dout1_8 vdout1_8ck194 = 0 time = 975
* CHECK dout1_9 vdout1_9ck194 = 0 time = 975
* CHECK dout1_10 vdout1_10ck194 = 0 time = 975
* CHECK dout1_11 vdout1_11ck194 = 0 time = 975
* CHECK dout1_12 vdout1_12ck194 = 1.0 time = 975
* CHECK dout1_13 vdout1_13ck194 = 0 time = 975
* CHECK dout1_14 vdout1_14ck194 = 1.0 time = 975
* CHECK dout1_15 vdout1_15ck194 = 1.0 time = 975
* CHECK dout1_16 vdout1_16ck194 = 0 time = 975
* CHECK dout1_17 vdout1_17ck194 = 0 time = 975
* CHECK dout1_18 vdout1_18ck194 = 0 time = 975
* CHECK dout1_0 vdout1_0ck197 = 1.0 time = 990
* CHECK dout1_1 vdout1_1ck197 = 1.0 time = 990
* CHECK dout1_2 vdout1_2ck197 = 1.0 time = 990
* CHECK dout1_3 vdout1_3ck197 = 1.0 time = 990
* CHECK dout1_4 vdout1_4ck197 = 0 time = 990
* CHECK dout1_5 vdout1_5ck197 = 0 time = 990
* CHECK dout1_6 vdout1_6ck197 = 1.0 time = 990
* CHECK dout1_7 vdout1_7ck197 = 1.0 time = 990
* CHECK dout1_8 vdout1_8ck197 = 0 time = 990
* CHECK dout1_9 vdout1_9ck197 = 0 time = 990
* CHECK dout1_10 vdout1_10ck197 = 1.0 time = 990
* CHECK dout1_11 vdout1_11ck197 = 1.0 time = 990
* CHECK dout1_12 vdout1_12ck197 = 0 time = 990
* CHECK dout1_13 vdout1_13ck197 = 1.0 time = 990
* CHECK dout1_14 vdout1_14ck197 = 0 time = 990
* CHECK dout1_15 vdout1_15ck197 = 1.0 time = 990
* CHECK dout1_16 vdout1_16ck197 = 0 time = 990
* CHECK dout1_17 vdout1_17ck197 = 1.0 time = 990
* CHECK dout1_18 vdout1_18ck197 = 1.0 time = 990
* CHECK dout1_0 vdout1_0ck200 = 0 time = 1005
* CHECK dout1_1 vdout1_1ck200 = 1.0 time = 1005
* CHECK dout1_2 vdout1_2ck200 = 1.0 time = 1005
* CHECK dout1_3 vdout1_3ck200 = 0 time = 1005
* CHECK dout1_4 vdout1_4ck200 = 1.0 time = 1005
* CHECK dout1_5 vdout1_5ck200 = 0 time = 1005
* CHECK dout1_6 vdout1_6ck200 = 0 time = 1005
* CHECK dout1_7 vdout1_7ck200 = 0 time = 1005
* CHECK dout1_8 vdout1_8ck200 = 0 time = 1005
* CHECK dout1_9 vdout1_9ck200 = 0 time = 1005
* CHECK dout1_10 vdout1_10ck200 = 1.0 time = 1005
* CHECK dout1_11 vdout1_11ck200 = 1.0 time = 1005
* CHECK dout1_12 vdout1_12ck200 = 0 time = 1005
* CHECK dout1_13 vdout1_13ck200 = 1.0 time = 1005
* CHECK dout1_14 vdout1_14ck200 = 1.0 time = 1005
* CHECK dout1_15 vdout1_15ck200 = 1.0 time = 1005
* CHECK dout1_16 vdout1_16ck200 = 1.0 time = 1005
* CHECK dout1_17 vdout1_17ck200 = 1.0 time = 1005
* CHECK dout1_18 vdout1_18ck200 = 0 time = 1005
* CHECK dout1_0 vdout1_0ck202 = 0 time = 1015
* CHECK dout1_1 vdout1_1ck202 = 1.0 time = 1015
* CHECK dout1_2 vdout1_2ck202 = 1.0 time = 1015
* CHECK dout1_3 vdout1_3ck202 = 0 time = 1015
* CHECK dout1_4 vdout1_4ck202 = 1.0 time = 1015
* CHECK dout1_5 vdout1_5ck202 = 0 time = 1015
* CHECK dout1_6 vdout1_6ck202 = 0 time = 1015
* CHECK dout1_7 vdout1_7ck202 = 0 time = 1015
* CHECK dout1_8 vdout1_8ck202 = 0 time = 1015
* CHECK dout1_9 vdout1_9ck202 = 0 time = 1015
* CHECK dout1_10 vdout1_10ck202 = 1.0 time = 1015
* CHECK dout1_11 vdout1_11ck202 = 1.0 time = 1015
* CHECK dout1_12 vdout1_12ck202 = 0 time = 1015
* CHECK dout1_13 vdout1_13ck202 = 1.0 time = 1015
* CHECK dout1_14 vdout1_14ck202 = 1.0 time = 1015
* CHECK dout1_15 vdout1_15ck202 = 1.0 time = 1015
* CHECK dout1_16 vdout1_16ck202 = 1.0 time = 1015
* CHECK dout1_17 vdout1_17ck202 = 1.0 time = 1015
* CHECK dout1_18 vdout1_18ck202 = 0 time = 1015
* CHECK dout1_0 vdout1_0ck204 = 1.0 time = 1025
* CHECK dout1_1 vdout1_1ck204 = 1.0 time = 1025
* CHECK dout1_2 vdout1_2ck204 = 1.0 time = 1025
* CHECK dout1_3 vdout1_3ck204 = 1.0 time = 1025
* CHECK dout1_4 vdout1_4ck204 = 0 time = 1025
* CHECK dout1_5 vdout1_5ck204 = 0 time = 1025
* CHECK dout1_6 vdout1_6ck204 = 1.0 time = 1025
* CHECK dout1_7 vdout1_7ck204 = 1.0 time = 1025
* CHECK dout1_8 vdout1_8ck204 = 0 time = 1025
* CHECK dout1_9 vdout1_9ck204 = 0 time = 1025
* CHECK dout1_10 vdout1_10ck204 = 1.0 time = 1025
* CHECK dout1_11 vdout1_11ck204 = 1.0 time = 1025
* CHECK dout1_12 vdout1_12ck204 = 0 time = 1025
* CHECK dout1_13 vdout1_13ck204 = 1.0 time = 1025
* CHECK dout1_14 vdout1_14ck204 = 0 time = 1025
* CHECK dout1_15 vdout1_15ck204 = 1.0 time = 1025
* CHECK dout1_16 vdout1_16ck204 = 0 time = 1025
* CHECK dout1_17 vdout1_17ck204 = 1.0 time = 1025
* CHECK dout1_18 vdout1_18ck204 = 1.0 time = 1025
.include /home/padraig/Tools/OpenRAM/macro/sram_0rw1r1w_19_128_freepdk45/functional_meas.sp
* probe is used for hspice/xa, while plot is used in ngspice
*.probe V(*)
*.plot V(*)
.end

