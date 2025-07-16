* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/padraig/Tools/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/padraig/Tools/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "/tmp/openram_padraig_174746_temp/sram.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xsram_0rw1r1w_17_128_freepdk45 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 din0_16 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15 dout1_16 vdd gnd sram_0rw1r1w_17_128_freepdk45

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


* Important signals for debug
* bl:	xsram:xbank0:bl_0_1
* br:	xsram:xbank0:br_0_1
* s_en:	xsram:s_en
* q:	xsram:xbank0:xbitcell_array:xbitcell_array:xbit_r0_c0.Q
* qbar:	xsram:xbank0:xbitcell_array:xbitcell_array:xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 01010010010011111  to  address 1111011 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 10111110111110110  to  address 1111110 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 01011001000100100  to  address 0000001 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 01011001000100100 from address 0000001 (from port 1) during cycle 4 (20ns - 25ns)
*	Writing 11000100001001111  to  address 0000011 (from port 0) during cycle 8 (40ns - 45ns)
*	Reading 01010010010011111 from address 1111011 (from port 1) during cycle 8 (40ns - 45ns)
*	Writing 10011110111110111  to  address 1111100 (from port 0) during cycle 9 (45ns - 50ns)
*	Reading 10111110111110110 from address 1111110 (from port 1) during cycle 9 (45ns - 50ns)
*	Reading 11000100001001111 from address 0000011 (from port 1) during cycle 10 (50ns - 55ns)
*	Reading 01011001000100100 from address 0000001 (from port 1) during cycle 11 (55ns - 60ns)
*	Reading 10011110111110111 from address 1111100 (from port 1) during cycle 13 (65ns - 70ns)
*	Reading 10111110111110110 from address 1111110 (from port 1) during cycle 14 (70ns - 75ns)
*	Reading 01010010010011111 from address 1111011 (from port 1) during cycle 15 (75ns - 80ns)
*	Reading 10011110111110111 from address 1111100 (from port 1) during cycle 16 (80ns - 85ns)
*	Reading 11000100001001111 from address 0000011 (from port 1) during cycle 17 (85ns - 90ns)
*	Writing 00111101101111110  to  address 1111110 (from port 0) during cycle 18 (90ns - 95ns)
*	Reading 11000100001001111 from address 0000011 (from port 1) during cycle 18 (90ns - 95ns)
*	Writing 10010011001111111  to  address 0000011 (from port 0) during cycle 19 (95ns - 100ns)
*	Reading 10011110111110111 from address 1111100 (from port 1) during cycle 19 (95ns - 100ns)
*	Writing 00101000010110110  to  address 1111101 (from port 0) during cycle 22 (110ns - 115ns)
*	Writing 11001001001001011  to  address 1111011 (from port 0) during cycle 23 (115ns - 120ns)
*	Reading 01011001000100100 from address 0000001 (from port 1) during cycle 23 (115ns - 120ns)
*	Writing 11001011010001001  to  address 1111110 (from port 0) during cycle 24 (120ns - 125ns)
*	Reading 00101000010110110 from address 1111101 (from port 1) during cycle 24 (120ns - 125ns)
*	Writing 00111110011001110  to  address 0000001 (from port 0) during cycle 25 (125ns - 130ns)
*	Reading 11001001001001011 from address 1111011 (from port 1) during cycle 25 (125ns - 130ns)
*	Writing 11000101111111111  to  address 1111101 (from port 0) during cycle 27 (135ns - 140ns)
*	Reading 11000101111111111 from address 1111101 (from port 1) during cycle 29 (145ns - 150ns)
*	Writing 11111101110011000  to  address 0000010 (from port 0) during cycle 30 (150ns - 155ns)
*	Writing 00111100001111010  to  address 0000011 (from port 0) during cycle 31 (155ns - 160ns)
*	Reading 11001011010001001 from address 1111110 (from port 1) during cycle 31 (155ns - 160ns)
*	Writing 00100110100011110  to  address 0000011 (from port 0) during cycle 32 (160ns - 165ns)
*	Reading 00111110011001110 from address 0000001 (from port 1) during cycle 32 (160ns - 165ns)
*	Reading 11001001001001011 from address 1111011 (from port 1) during cycle 33 (165ns - 170ns)
*	Writing 11001111000101100  to  address 1111110 (from port 0) during cycle 34 (170ns - 175ns)
*	Writing 10101110001100000  to  address 1111110 (from port 0) during cycle 36 (180ns - 185ns)
*	Reading 10011110111110111 from address 1111100 (from port 1) during cycle 36 (180ns - 185ns)
*	Writing 10001111011101010  to  address 1111110 (from port 0) during cycle 37 (185ns - 190ns)
*	Writing 01010110010011011  to  address 1111110 (from port 0) during cycle 38 (190ns - 195ns)
*	Writing 10111011101111111  to  address 0000000 (from port 0) during cycle 39 (195ns - 200ns)
*	Writing 00001101001011100  to  address 1111110 (from port 0) during cycle 40 (200ns - 205ns)
*	Reading 00111110011001110 from address 0000001 (from port 1) during cycle 40 (200ns - 205ns)
*	Reading 10011110111110111 from address 1111100 (from port 1) during cycle 41 (205ns - 210ns)
*	Reading 10111011101111111 from address 0000000 (from port 1) during cycle 42 (210ns - 215ns)
*	Writing 10101000111011010  to  address 0000000 (from port 0) during cycle 43 (215ns - 220ns)
*	Reading 11000101111111111 from address 1111101 (from port 1) during cycle 43 (215ns - 220ns)
*	Writing 11101011010000011  to  address 1111100 (from port 0) during cycle 44 (220ns - 225ns)
*	Writing 11011000110000000  to  address 1111011 (from port 0) during cycle 45 (225ns - 230ns)
*	Reading 00111110011001110 from address 0000001 (from port 1) during cycle 45 (225ns - 230ns)
*	Reading 11101011010000011 from address 1111100 (from port 1) during cycle 46 (230ns - 235ns)
*	Writing 01110001111100011  to  address 1111101 (from port 0) during cycle 47 (235ns - 240ns)
*	Writing 10101100111110101  to  address 1111101 (from port 0) during cycle 50 (250ns - 255ns)
*	Writing 00101110010101001  to  address 1111110 (from port 0) during cycle 52 (260ns - 265ns)
*	Reading 10101000111011010 from address 0000000 (from port 1) during cycle 53 (265ns - 270ns)
*	Writing 10101100011001110  to  address 1111011 (from port 0) during cycle 54 (270ns - 275ns)
*	Reading 00100110100011110 from address 0000011 (from port 1) during cycle 54 (270ns - 275ns)
*	Writing 00001010110111101  to  address 0000010 (from port 0) during cycle 55 (275ns - 280ns)
*	Writing 11001010000010110  to  address 0000010 (from port 0) during cycle 57 (285ns - 290ns)
*	Reading 00111110011001110 from address 0000001 (from port 1) during cycle 57 (285ns - 290ns)
*	Writing 01000100111001010  to  address 1111110 (from port 0) during cycle 58 (290ns - 295ns)
*	Reading 10101100011001110 from address 1111011 (from port 1) during cycle 58 (290ns - 295ns)
*	Writing 01000001111011100  to  address 0000001 (from port 0) during cycle 59 (295ns - 300ns)
*	Reading 10101100111110101 from address 1111101 (from port 1) during cycle 59 (295ns - 300ns)
*	Writing 11010111011101110  to  address 1111100 (from port 0) during cycle 60 (300ns - 305ns)
*	Reading 11001010000010110 from address 0000010 (from port 1) during cycle 61 (305ns - 310ns)
*	Writing 10100001000111110  to  address 0000001 (from port 0) during cycle 62 (310ns - 315ns)
*	Writing 01011010011000010  to  address 1111101 (from port 0) during cycle 63 (315ns - 320ns)
*	Writing 01000100100000110  to  address 1111110 (from port 0) during cycle 65 (325ns - 330ns)
*	Writing 10100101010000010  to  address 0000011 (from port 0) during cycle 66 (330ns - 335ns)
*	Writing 01000011000100000  to  address 1111100 (from port 0) during cycle 67 (335ns - 340ns)
*	Reading 01011010011000010 from address 1111101 (from port 1) during cycle 67 (335ns - 340ns)
*	Writing 10010010011111101  to  address 0000000 (from port 0) during cycle 70 (350ns - 355ns)
*	Reading 01011010011000010 from address 1111101 (from port 1) during cycle 70 (350ns - 355ns)
*	Writing 10110010101111100  to  address 0000000 (from port 0) during cycle 71 (355ns - 360ns)
*	Writing 01110001010110011  to  address 1111110 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 01011010011000010 from address 1111101 (from port 1) during cycle 73 (365ns - 370ns)
*	Reading 11001010000010110 from address 0000010 (from port 1) during cycle 76 (380ns - 385ns)
*	Writing 10101011101101111  to  address 1111110 (from port 0) during cycle 77 (385ns - 390ns)
*	Reading 01000011000100000 from address 1111100 (from port 1) during cycle 77 (385ns - 390ns)
*	Writing 11000001010000110  to  address 1111101 (from port 0) during cycle 79 (395ns - 400ns)
*	Reading 10101100011001110 from address 1111011 (from port 1) during cycle 79 (395ns - 400ns)
*	Writing 01110010011010010  to  address 0000000 (from port 0) during cycle 80 (400ns - 405ns)
*	Reading 10101011101101111 from address 1111110 (from port 1) during cycle 80 (400ns - 405ns)
*	Writing 10001001000111001  to  address 1111101 (from port 0) during cycle 82 (410ns - 415ns)
*	Writing 11001001111110000  to  address 1111101 (from port 0) during cycle 85 (425ns - 430ns)
*	Writing 10101101000010111  to  address 1111110 (from port 0) during cycle 86 (430ns - 435ns)
*	Writing 01110111010000110  to  address 0000010 (from port 0) during cycle 87 (435ns - 440ns)
*	Reading 11001001111110000 from address 1111101 (from port 1) during cycle 87 (435ns - 440ns)
*	Reading 10101100011001110 from address 1111011 (from port 1) during cycle 89 (445ns - 450ns)
*	Writing 10101000011000110  to  address 0000001 (from port 0) during cycle 90 (450ns - 455ns)
*	Reading 10100101010000010 from address 0000011 (from port 1) during cycle 90 (450ns - 455ns)
*	Writing 11011001110110011  to  address 1111110 (from port 0) during cycle 91 (455ns - 460ns)
*	Writing 11101010010100000  to  address 1111110 (from port 0) during cycle 92 (460ns - 465ns)
*	Reading 10101100011001110 from address 1111011 (from port 1) during cycle 93 (465ns - 470ns)
*	Writing 10011100111100100  to  address 1111100 (from port 0) during cycle 94 (470ns - 475ns)
*	Writing 10010011001010111  to  address 1111100 (from port 0) during cycle 96 (480ns - 485ns)
*	Writing 10110011101010001  to  address 1111101 (from port 0) during cycle 98 (490ns - 495ns)
*	Reading 10101000011000110 from address 0000001 (from port 1) during cycle 99 (495ns - 500ns)
*	Writing 11111110010010110  to  address 0000011 (from port 0) during cycle 100 (500ns - 505ns)
*	Reading 10010011001010111 from address 1111100 (from port 1) during cycle 100 (500ns - 505ns)
*	Reading 10101100011001110 from address 1111011 (from port 1) during cycle 101 (505ns - 510ns)
*	Writing 00011011101100110  to  address 0000000 (from port 0) during cycle 102 (510ns - 515ns)
*	Reading 10110011101010001 from address 1111101 (from port 1) during cycle 102 (510ns - 515ns)
*	Reading 11101010010100000 from address 1111110 (from port 1) during cycle 103 (515ns - 520ns)
*	Writing 01100100011101101  to  address 1111101 (from port 0) during cycle 104 (520ns - 525ns)
*	Writing 00000001000100000  to  address 0000010 (from port 0) during cycle 105 (525ns - 530ns)
*	Reading 10101000011000110 from address 0000001 (from port 1) during cycle 105 (525ns - 530ns)
*	Writing 00101110000010100  to  address 1111100 (from port 0) during cycle 106 (530ns - 535ns)
*	Writing 01001000111101100  to  address 1111110 (from port 0) during cycle 107 (535ns - 540ns)
*	Reading 00000001000100000 from address 0000010 (from port 1) during cycle 112 (560ns - 565ns)
*	Writing 11001101110110111  to  address 0000011 (from port 0) during cycle 115 (575ns - 580ns)
*	Reading 01100100011101101 from address 1111101 (from port 1) during cycle 116 (580ns - 585ns)
*	Writing 01101100011011010  to  address 0000011 (from port 0) during cycle 118 (590ns - 595ns)
*	Writing 10111011011101000  to  address 0000010 (from port 0) during cycle 120 (600ns - 605ns)
*	Writing 11011011011100111  to  address 1111101 (from port 0) during cycle 121 (605ns - 610ns)
*	Reading 01101100011011010 from address 0000011 (from port 1) during cycle 122 (610ns - 615ns)
*	Reading 10111011011101000 from address 0000010 (from port 1) during cycle 123 (615ns - 620ns)
*	Reading 01101100011011010 from address 0000011 (from port 1) during cycle 124 (620ns - 625ns)
*	Writing 00100111111011111  to  address 1111011 (from port 0) during cycle 125 (625ns - 630ns)
*	Reading 11011011011100111 from address 1111101 (from port 1) during cycle 125 (625ns - 630ns)
*	Reading 10111011011101000 from address 0000010 (from port 1) during cycle 126 (630ns - 635ns)
*	Reading 00101110000010100 from address 1111100 (from port 1) during cycle 127 (635ns - 640ns)
*	Writing 11010010100010010  to  address 1111100 (from port 0) during cycle 129 (645ns - 650ns)
*	Reading 01001000111101100 from address 1111110 (from port 1) during cycle 129 (645ns - 650ns)
*	Writing 11110110011111100  to  address 0000011 (from port 0) during cycle 130 (650ns - 655ns)
*	Reading 01001000111101100 from address 1111110 (from port 1) during cycle 130 (650ns - 655ns)
*	Writing 00111010001101110  to  address 1111100 (from port 0) during cycle 131 (655ns - 660ns)
*	Reading 00011011101100110 from address 0000000 (from port 1) during cycle 131 (655ns - 660ns)
*	Writing 01000100001000001  to  address 0000011 (from port 0) during cycle 132 (660ns - 665ns)
*	Reading 11011011011100111 from address 1111101 (from port 1) during cycle 132 (660ns - 665ns)
*	Writing 01011100111100100  to  address 0000010 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 00100111111011111 from address 1111011 (from port 1) during cycle 134 (670ns - 675ns)
*	Reading 00111010001101110 from address 1111100 (from port 1) during cycle 135 (675ns - 680ns)
*	Writing 00011011001110001  to  address 0000000 (from port 0) during cycle 136 (680ns - 685ns)
*	Reading 01000100001000001 from address 0000011 (from port 1) during cycle 136 (680ns - 685ns)
*	Writing 01001001011100110  to  address 1111100 (from port 0) during cycle 137 (685ns - 690ns)
*	Reading 00011011001110001 from address 0000000 (from port 1) during cycle 137 (685ns - 690ns)
*	Reading 01001001011100110 from address 1111100 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing 11000001000100011  to  address 1111011 (from port 0) during cycle 140 (700ns - 705ns)
*	Writing 10111101010001010  to  address 1111011 (from port 0) during cycle 142 (710ns - 715ns)
*	Reading 01011100111100100 from address 0000010 (from port 1) during cycle 142 (710ns - 715ns)
*	Writing 11101111010000010  to  address 1111110 (from port 0) during cycle 143 (715ns - 720ns)
*	Reading 00011011001110001 from address 0000000 (from port 1) during cycle 145 (725ns - 730ns)
*	Reading 11101111010000010 from address 1111110 (from port 1) during cycle 146 (730ns - 735ns)
*	Reading 01011100111100100 from address 0000010 (from port 1) during cycle 147 (735ns - 740ns)
*	Writing 00100111111011001  to  address 1111101 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 01011100111100100 from address 0000010 (from port 1) during cycle 148 (740ns - 745ns)
*	Reading 10111101010001010 from address 1111011 (from port 1) during cycle 149 (745ns - 750ns)
*	Writing 11101010111010101  to  address 0000010 (from port 0) during cycle 152 (760ns - 765ns)
*	Writing 10000001110110101  to  address 0000000 (from port 0) during cycle 153 (765ns - 770ns)
*	Writing 10011000111100001  to  address 1111011 (from port 0) during cycle 154 (770ns - 775ns)
*	Reading 10101000011000110 from address 0000001 (from port 1) during cycle 154 (770ns - 775ns)
*	Writing 00001101110001101  to  address 1111110 (from port 0) during cycle 156 (780ns - 785ns)
*	Reading 01001001011100110 from address 1111100 (from port 1) during cycle 156 (780ns - 785ns)
*	Writing 11001000100011111  to  address 0000000 (from port 0) during cycle 157 (785ns - 790ns)
*	Reading 11101010111010101 from address 0000010 (from port 1) during cycle 157 (785ns - 790ns)
*	Reading 00001101110001101 from address 1111110 (from port 1) during cycle 158 (790ns - 795ns)
*	Writing 01011011111111111  to  address 0000001 (from port 0) during cycle 159 (795ns - 800ns)
*	Reading 10011000111100001 from address 1111011 (from port 1) during cycle 159 (795ns - 800ns)
*	Writing 11101010001110101  to  address 1111100 (from port 0) during cycle 160 (800ns - 805ns)
*	Reading 11101010111010101 from address 0000010 (from port 1) during cycle 160 (800ns - 805ns)
*	Writing 01110100101101111  to  address 0000000 (from port 0) during cycle 161 (805ns - 810ns)
*	Writing 10101100100010010  to  address 1111110 (from port 0) during cycle 163 (815ns - 820ns)
*	Reading 01110100101101111 from address 0000000 (from port 1) during cycle 164 (820ns - 825ns)
*	Reading 11101010001110101 from address 1111100 (from port 1) during cycle 165 (825ns - 830ns)
*	Writing 10011110110010001  to  address 1111100 (from port 0) during cycle 166 (830ns - 835ns)
*	Reading 11101010111010101 from address 0000010 (from port 1) during cycle 166 (830ns - 835ns)
*	Writing 01110100010001101  to  address 0000001 (from port 0) during cycle 167 (835ns - 840ns)
*	Reading 10101100100010010 from address 1111110 (from port 1) during cycle 168 (840ns - 845ns)
*	Reading 10011110110010001 from address 1111100 (from port 1) during cycle 169 (845ns - 850ns)
*	Reading 00100111111011001 from address 1111101 (from port 1) during cycle 170 (850ns - 855ns)
*	Reading 10011110110010001 from address 1111100 (from port 1) during cycle 171 (855ns - 860ns)
*	Writing 10010100101000110  to  address 1111011 (from port 0) during cycle 172 (860ns - 865ns)
*	Reading 10101100100010010 from address 1111110 (from port 1) during cycle 172 (860ns - 865ns)
*	Writing 10010001110101000  to  address 1111100 (from port 0) during cycle 173 (865ns - 870ns)
*	Reading 00100111111011001 from address 1111101 (from port 1) during cycle 173 (865ns - 870ns)
*	Reading 10010001110101000 from address 1111100 (from port 1) during cycle 176 (880ns - 885ns)
*	Writing 01110010110100111  to  address 0000000 (from port 0) during cycle 177 (885ns - 890ns)
*	Writing 01101110000100001  to  address 0000011 (from port 0) during cycle 178 (890ns - 895ns)
*	Writing 00001110000001010  to  address 0000011 (from port 0) during cycle 179 (895ns - 900ns)
*	Reading 10010001110101000 from address 1111100 (from port 1) during cycle 179 (895ns - 900ns)
*	Writing 01011101101001110  to  address 0000001 (from port 0) during cycle 180 (900ns - 905ns)
*	Reading 11101010111010101 from address 0000010 (from port 1) during cycle 181 (905ns - 910ns)
*	Writing 01011001010000100  to  address 0000011 (from port 0) during cycle 182 (910ns - 915ns)
*	Reading 11101010111010101 from address 0000010 (from port 1) during cycle 182 (910ns - 915ns)
*	Writing 11100001100011110  to  address 0000001 (from port 0) during cycle 186 (930ns - 935ns)
*	Writing 00010110101111001  to  address 1111011 (from port 0) during cycle 188 (940ns - 945ns)
*	Writing 10001010101110110  to  address 1111110 (from port 0) during cycle 189 (945ns - 950ns)
*	Reading 01011001010000100 from address 0000011 (from port 1) during cycle 189 (945ns - 950ns)
*	Writing 00101001011000010  to  address 1111101 (from port 0) during cycle 190 (950ns - 955ns)
*	Reading 01011001010000100 from address 0000011 (from port 1) during cycle 190 (950ns - 955ns)
*	Reading 10010001110101000 from address 1111100 (from port 1) during cycle 193 (965ns - 970ns)
*	Writing 00101101000100001  to  address 0000000 (from port 0) during cycle 194 (970ns - 975ns)
*	Writing 00011111111100001  to  address 1111110 (from port 0) during cycle 195 (975ns - 980ns)
*	Reading 10010001110101000 from address 1111100 (from port 1) during cycle 195 (975ns - 980ns)
*	Writing 10011010000011100  to  address 0000011 (from port 0) during cycle 196 (980ns - 985ns)
*	Writing 00101000101000110  to  address 1111100 (from port 0) during cycle 197 (985ns - 990ns)
*	Writing 01001101111101010  to  address 0000001 (from port 0) during cycle 198 (990ns - 995ns)
*	Reading 11101010111010101 from address 0000010 (from port 1) during cycle 198 (990ns - 995ns)
*	Reading 11101010111010101 from address 0000010 (from port 1) during cycle 199 (995ns - 1000ns)
*	Writing 10110100100000010  to  address 0000000 (from port 0) during cycle 200 (1000ns - 1005ns)
*	Writing 11101010111001001  to  address 0000000 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Reading 00101001011000010 from address 1111101 (from port 1) during cycle 201 (1005ns - 1010ns)
*	Reading 11101010111001001 from address 0000000 (from port 1) during cycle 202 (1010ns - 1015ns)
*	Reading 11101010111001001 from address 0000000 (from port 1) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 0), (295, 1), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 0), (515, 0), (520, 1), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 0), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 0), (185, 1), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 0), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 1), (770, 0), (775, 0), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_13  din0_13  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_14  din0_14  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 0), (515, 0), (520, 1), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_15  din0_15  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 1), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 1), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_16  din0_16  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 1), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 1), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 1), (170, 0), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 1), (235, 0), (240, 1), (245, 1), (250, 0), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 0), (315, 0), (320, 1), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 0), (495, 1), (500, 0), (505, 1), (510, 0), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 0), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 1), (695, 1), (700, 0), (705, 1), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 0), (820, 1), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 1), (445, 0), (450, 0), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 0), (885, 1), (890, 1), (895, 0), (900, 1), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 1), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 vdout1_0ck4 = 0 time = 25
* CHECK dout1_1 vdout1_1ck4 = 0 time = 25
* CHECK dout1_2 vdout1_2ck4 = 1.0 time = 25
* CHECK dout1_3 vdout1_3ck4 = 0 time = 25
* CHECK dout1_4 vdout1_4ck4 = 0 time = 25
* CHECK dout1_5 vdout1_5ck4 = 1.0 time = 25
* CHECK dout1_6 vdout1_6ck4 = 0 time = 25
* CHECK dout1_7 vdout1_7ck4 = 0 time = 25
* CHECK dout1_8 vdout1_8ck4 = 0 time = 25
* CHECK dout1_9 vdout1_9ck4 = 1.0 time = 25
* CHECK dout1_10 vdout1_10ck4 = 0 time = 25
* CHECK dout1_11 vdout1_11ck4 = 0 time = 25
* CHECK dout1_12 vdout1_12ck4 = 1.0 time = 25
* CHECK dout1_13 vdout1_13ck4 = 1.0 time = 25
* CHECK dout1_14 vdout1_14ck4 = 0 time = 25
* CHECK dout1_15 vdout1_15ck4 = 1.0 time = 25
* CHECK dout1_16 vdout1_16ck4 = 0 time = 25
* CHECK dout1_0 vdout1_0ck8 = 1.0 time = 45
* CHECK dout1_1 vdout1_1ck8 = 1.0 time = 45
* CHECK dout1_2 vdout1_2ck8 = 1.0 time = 45
* CHECK dout1_3 vdout1_3ck8 = 1.0 time = 45
* CHECK dout1_4 vdout1_4ck8 = 1.0 time = 45
* CHECK dout1_5 vdout1_5ck8 = 0 time = 45
* CHECK dout1_6 vdout1_6ck8 = 0 time = 45
* CHECK dout1_7 vdout1_7ck8 = 1.0 time = 45
* CHECK dout1_8 vdout1_8ck8 = 0 time = 45
* CHECK dout1_9 vdout1_9ck8 = 0 time = 45
* CHECK dout1_10 vdout1_10ck8 = 1.0 time = 45
* CHECK dout1_11 vdout1_11ck8 = 0 time = 45
* CHECK dout1_12 vdout1_12ck8 = 0 time = 45
* CHECK dout1_13 vdout1_13ck8 = 1.0 time = 45
* CHECK dout1_14 vdout1_14ck8 = 0 time = 45
* CHECK dout1_15 vdout1_15ck8 = 1.0 time = 45
* CHECK dout1_16 vdout1_16ck8 = 0 time = 45
* CHECK dout1_0 vdout1_0ck9 = 0 time = 50
* CHECK dout1_1 vdout1_1ck9 = 1.0 time = 50
* CHECK dout1_2 vdout1_2ck9 = 1.0 time = 50
* CHECK dout1_3 vdout1_3ck9 = 0 time = 50
* CHECK dout1_4 vdout1_4ck9 = 1.0 time = 50
* CHECK dout1_5 vdout1_5ck9 = 1.0 time = 50
* CHECK dout1_6 vdout1_6ck9 = 1.0 time = 50
* CHECK dout1_7 vdout1_7ck9 = 1.0 time = 50
* CHECK dout1_8 vdout1_8ck9 = 1.0 time = 50
* CHECK dout1_9 vdout1_9ck9 = 0 time = 50
* CHECK dout1_10 vdout1_10ck9 = 1.0 time = 50
* CHECK dout1_11 vdout1_11ck9 = 1.0 time = 50
* CHECK dout1_12 vdout1_12ck9 = 1.0 time = 50
* CHECK dout1_13 vdout1_13ck9 = 1.0 time = 50
* CHECK dout1_14 vdout1_14ck9 = 1.0 time = 50
* CHECK dout1_15 vdout1_15ck9 = 0 time = 50
* CHECK dout1_16 vdout1_16ck9 = 1.0 time = 50
* CHECK dout1_0 vdout1_0ck10 = 1.0 time = 55
* CHECK dout1_1 vdout1_1ck10 = 1.0 time = 55
* CHECK dout1_2 vdout1_2ck10 = 1.0 time = 55
* CHECK dout1_3 vdout1_3ck10 = 1.0 time = 55
* CHECK dout1_4 vdout1_4ck10 = 0 time = 55
* CHECK dout1_5 vdout1_5ck10 = 0 time = 55
* CHECK dout1_6 vdout1_6ck10 = 1.0 time = 55
* CHECK dout1_7 vdout1_7ck10 = 0 time = 55
* CHECK dout1_8 vdout1_8ck10 = 0 time = 55
* CHECK dout1_9 vdout1_9ck10 = 0 time = 55
* CHECK dout1_10 vdout1_10ck10 = 0 time = 55
* CHECK dout1_11 vdout1_11ck10 = 1.0 time = 55
* CHECK dout1_12 vdout1_12ck10 = 0 time = 55
* CHECK dout1_13 vdout1_13ck10 = 0 time = 55
* CHECK dout1_14 vdout1_14ck10 = 0 time = 55
* CHECK dout1_15 vdout1_15ck10 = 1.0 time = 55
* CHECK dout1_16 vdout1_16ck10 = 1.0 time = 55
* CHECK dout1_0 vdout1_0ck11 = 0 time = 60
* CHECK dout1_1 vdout1_1ck11 = 0 time = 60
* CHECK dout1_2 vdout1_2ck11 = 1.0 time = 60
* CHECK dout1_3 vdout1_3ck11 = 0 time = 60
* CHECK dout1_4 vdout1_4ck11 = 0 time = 60
* CHECK dout1_5 vdout1_5ck11 = 1.0 time = 60
* CHECK dout1_6 vdout1_6ck11 = 0 time = 60
* CHECK dout1_7 vdout1_7ck11 = 0 time = 60
* CHECK dout1_8 vdout1_8ck11 = 0 time = 60
* CHECK dout1_9 vdout1_9ck11 = 1.0 time = 60
* CHECK dout1_10 vdout1_10ck11 = 0 time = 60
* CHECK dout1_11 vdout1_11ck11 = 0 time = 60
* CHECK dout1_12 vdout1_12ck11 = 1.0 time = 60
* CHECK dout1_13 vdout1_13ck11 = 1.0 time = 60
* CHECK dout1_14 vdout1_14ck11 = 0 time = 60
* CHECK dout1_15 vdout1_15ck11 = 1.0 time = 60
* CHECK dout1_16 vdout1_16ck11 = 0 time = 60
* CHECK dout1_0 vdout1_0ck13 = 1.0 time = 70
* CHECK dout1_1 vdout1_1ck13 = 1.0 time = 70
* CHECK dout1_2 vdout1_2ck13 = 1.0 time = 70
* CHECK dout1_3 vdout1_3ck13 = 0 time = 70
* CHECK dout1_4 vdout1_4ck13 = 1.0 time = 70
* CHECK dout1_5 vdout1_5ck13 = 1.0 time = 70
* CHECK dout1_6 vdout1_6ck13 = 1.0 time = 70
* CHECK dout1_7 vdout1_7ck13 = 1.0 time = 70
* CHECK dout1_8 vdout1_8ck13 = 1.0 time = 70
* CHECK dout1_9 vdout1_9ck13 = 0 time = 70
* CHECK dout1_10 vdout1_10ck13 = 1.0 time = 70
* CHECK dout1_11 vdout1_11ck13 = 1.0 time = 70
* CHECK dout1_12 vdout1_12ck13 = 1.0 time = 70
* CHECK dout1_13 vdout1_13ck13 = 1.0 time = 70
* CHECK dout1_14 vdout1_14ck13 = 0 time = 70
* CHECK dout1_15 vdout1_15ck13 = 0 time = 70
* CHECK dout1_16 vdout1_16ck13 = 1.0 time = 70
* CHECK dout1_0 vdout1_0ck14 = 0 time = 75
* CHECK dout1_1 vdout1_1ck14 = 1.0 time = 75
* CHECK dout1_2 vdout1_2ck14 = 1.0 time = 75
* CHECK dout1_3 vdout1_3ck14 = 0 time = 75
* CHECK dout1_4 vdout1_4ck14 = 1.0 time = 75
* CHECK dout1_5 vdout1_5ck14 = 1.0 time = 75
* CHECK dout1_6 vdout1_6ck14 = 1.0 time = 75
* CHECK dout1_7 vdout1_7ck14 = 1.0 time = 75
* CHECK dout1_8 vdout1_8ck14 = 1.0 time = 75
* CHECK dout1_9 vdout1_9ck14 = 0 time = 75
* CHECK dout1_10 vdout1_10ck14 = 1.0 time = 75
* CHECK dout1_11 vdout1_11ck14 = 1.0 time = 75
* CHECK dout1_12 vdout1_12ck14 = 1.0 time = 75
* CHECK dout1_13 vdout1_13ck14 = 1.0 time = 75
* CHECK dout1_14 vdout1_14ck14 = 1.0 time = 75
* CHECK dout1_15 vdout1_15ck14 = 0 time = 75
* CHECK dout1_16 vdout1_16ck14 = 1.0 time = 75
* CHECK dout1_0 vdout1_0ck15 = 1.0 time = 80
* CHECK dout1_1 vdout1_1ck15 = 1.0 time = 80
* CHECK dout1_2 vdout1_2ck15 = 1.0 time = 80
* CHECK dout1_3 vdout1_3ck15 = 1.0 time = 80
* CHECK dout1_4 vdout1_4ck15 = 1.0 time = 80
* CHECK dout1_5 vdout1_5ck15 = 0 time = 80
* CHECK dout1_6 vdout1_6ck15 = 0 time = 80
* CHECK dout1_7 vdout1_7ck15 = 1.0 time = 80
* CHECK dout1_8 vdout1_8ck15 = 0 time = 80
* CHECK dout1_9 vdout1_9ck15 = 0 time = 80
* CHECK dout1_10 vdout1_10ck15 = 1.0 time = 80
* CHECK dout1_11 vdout1_11ck15 = 0 time = 80
* CHECK dout1_12 vdout1_12ck15 = 0 time = 80
* CHECK dout1_13 vdout1_13ck15 = 1.0 time = 80
* CHECK dout1_14 vdout1_14ck15 = 0 time = 80
* CHECK dout1_15 vdout1_15ck15 = 1.0 time = 80
* CHECK dout1_16 vdout1_16ck15 = 0 time = 80
* CHECK dout1_0 vdout1_0ck16 = 1.0 time = 85
* CHECK dout1_1 vdout1_1ck16 = 1.0 time = 85
* CHECK dout1_2 vdout1_2ck16 = 1.0 time = 85
* CHECK dout1_3 vdout1_3ck16 = 0 time = 85
* CHECK dout1_4 vdout1_4ck16 = 1.0 time = 85
* CHECK dout1_5 vdout1_5ck16 = 1.0 time = 85
* CHECK dout1_6 vdout1_6ck16 = 1.0 time = 85
* CHECK dout1_7 vdout1_7ck16 = 1.0 time = 85
* CHECK dout1_8 vdout1_8ck16 = 1.0 time = 85
* CHECK dout1_9 vdout1_9ck16 = 0 time = 85
* CHECK dout1_10 vdout1_10ck16 = 1.0 time = 85
* CHECK dout1_11 vdout1_11ck16 = 1.0 time = 85
* CHECK dout1_12 vdout1_12ck16 = 1.0 time = 85
* CHECK dout1_13 vdout1_13ck16 = 1.0 time = 85
* CHECK dout1_14 vdout1_14ck16 = 0 time = 85
* CHECK dout1_15 vdout1_15ck16 = 0 time = 85
* CHECK dout1_16 vdout1_16ck16 = 1.0 time = 85
* CHECK dout1_0 vdout1_0ck17 = 1.0 time = 90
* CHECK dout1_1 vdout1_1ck17 = 1.0 time = 90
* CHECK dout1_2 vdout1_2ck17 = 1.0 time = 90
* CHECK dout1_3 vdout1_3ck17 = 1.0 time = 90
* CHECK dout1_4 vdout1_4ck17 = 0 time = 90
* CHECK dout1_5 vdout1_5ck17 = 0 time = 90
* CHECK dout1_6 vdout1_6ck17 = 1.0 time = 90
* CHECK dout1_7 vdout1_7ck17 = 0 time = 90
* CHECK dout1_8 vdout1_8ck17 = 0 time = 90
* CHECK dout1_9 vdout1_9ck17 = 0 time = 90
* CHECK dout1_10 vdout1_10ck17 = 0 time = 90
* CHECK dout1_11 vdout1_11ck17 = 1.0 time = 90
* CHECK dout1_12 vdout1_12ck17 = 0 time = 90
* CHECK dout1_13 vdout1_13ck17 = 0 time = 90
* CHECK dout1_14 vdout1_14ck17 = 0 time = 90
* CHECK dout1_15 vdout1_15ck17 = 1.0 time = 90
* CHECK dout1_16 vdout1_16ck17 = 1.0 time = 90
* CHECK dout1_0 vdout1_0ck18 = 1.0 time = 95
* CHECK dout1_1 vdout1_1ck18 = 1.0 time = 95
* CHECK dout1_2 vdout1_2ck18 = 1.0 time = 95
* CHECK dout1_3 vdout1_3ck18 = 1.0 time = 95
* CHECK dout1_4 vdout1_4ck18 = 0 time = 95
* CHECK dout1_5 vdout1_5ck18 = 0 time = 95
* CHECK dout1_6 vdout1_6ck18 = 1.0 time = 95
* CHECK dout1_7 vdout1_7ck18 = 0 time = 95
* CHECK dout1_8 vdout1_8ck18 = 0 time = 95
* CHECK dout1_9 vdout1_9ck18 = 0 time = 95
* CHECK dout1_10 vdout1_10ck18 = 0 time = 95
* CHECK dout1_11 vdout1_11ck18 = 1.0 time = 95
* CHECK dout1_12 vdout1_12ck18 = 0 time = 95
* CHECK dout1_13 vdout1_13ck18 = 0 time = 95
* CHECK dout1_14 vdout1_14ck18 = 0 time = 95
* CHECK dout1_15 vdout1_15ck18 = 1.0 time = 95
* CHECK dout1_16 vdout1_16ck18 = 1.0 time = 95
* CHECK dout1_0 vdout1_0ck19 = 1.0 time = 100
* CHECK dout1_1 vdout1_1ck19 = 1.0 time = 100
* CHECK dout1_2 vdout1_2ck19 = 1.0 time = 100
* CHECK dout1_3 vdout1_3ck19 = 0 time = 100
* CHECK dout1_4 vdout1_4ck19 = 1.0 time = 100
* CHECK dout1_5 vdout1_5ck19 = 1.0 time = 100
* CHECK dout1_6 vdout1_6ck19 = 1.0 time = 100
* CHECK dout1_7 vdout1_7ck19 = 1.0 time = 100
* CHECK dout1_8 vdout1_8ck19 = 1.0 time = 100
* CHECK dout1_9 vdout1_9ck19 = 0 time = 100
* CHECK dout1_10 vdout1_10ck19 = 1.0 time = 100
* CHECK dout1_11 vdout1_11ck19 = 1.0 time = 100
* CHECK dout1_12 vdout1_12ck19 = 1.0 time = 100
* CHECK dout1_13 vdout1_13ck19 = 1.0 time = 100
* CHECK dout1_14 vdout1_14ck19 = 0 time = 100
* CHECK dout1_15 vdout1_15ck19 = 0 time = 100
* CHECK dout1_16 vdout1_16ck19 = 1.0 time = 100
* CHECK dout1_0 vdout1_0ck23 = 0 time = 120
* CHECK dout1_1 vdout1_1ck23 = 0 time = 120
* CHECK dout1_2 vdout1_2ck23 = 1.0 time = 120
* CHECK dout1_3 vdout1_3ck23 = 0 time = 120
* CHECK dout1_4 vdout1_4ck23 = 0 time = 120
* CHECK dout1_5 vdout1_5ck23 = 1.0 time = 120
* CHECK dout1_6 vdout1_6ck23 = 0 time = 120
* CHECK dout1_7 vdout1_7ck23 = 0 time = 120
* CHECK dout1_8 vdout1_8ck23 = 0 time = 120
* CHECK dout1_9 vdout1_9ck23 = 1.0 time = 120
* CHECK dout1_10 vdout1_10ck23 = 0 time = 120
* CHECK dout1_11 vdout1_11ck23 = 0 time = 120
* CHECK dout1_12 vdout1_12ck23 = 1.0 time = 120
* CHECK dout1_13 vdout1_13ck23 = 1.0 time = 120
* CHECK dout1_14 vdout1_14ck23 = 0 time = 120
* CHECK dout1_15 vdout1_15ck23 = 1.0 time = 120
* CHECK dout1_16 vdout1_16ck23 = 0 time = 120
* CHECK dout1_0 vdout1_0ck24 = 0 time = 125
* CHECK dout1_1 vdout1_1ck24 = 1.0 time = 125
* CHECK dout1_2 vdout1_2ck24 = 1.0 time = 125
* CHECK dout1_3 vdout1_3ck24 = 0 time = 125
* CHECK dout1_4 vdout1_4ck24 = 1.0 time = 125
* CHECK dout1_5 vdout1_5ck24 = 1.0 time = 125
* CHECK dout1_6 vdout1_6ck24 = 0 time = 125
* CHECK dout1_7 vdout1_7ck24 = 1.0 time = 125
* CHECK dout1_8 vdout1_8ck24 = 0 time = 125
* CHECK dout1_9 vdout1_9ck24 = 0 time = 125
* CHECK dout1_10 vdout1_10ck24 = 0 time = 125
* CHECK dout1_11 vdout1_11ck24 = 0 time = 125
* CHECK dout1_12 vdout1_12ck24 = 1.0 time = 125
* CHECK dout1_13 vdout1_13ck24 = 0 time = 125
* CHECK dout1_14 vdout1_14ck24 = 1.0 time = 125
* CHECK dout1_15 vdout1_15ck24 = 0 time = 125
* CHECK dout1_16 vdout1_16ck24 = 0 time = 125
* CHECK dout1_0 vdout1_0ck25 = 1.0 time = 130
* CHECK dout1_1 vdout1_1ck25 = 1.0 time = 130
* CHECK dout1_2 vdout1_2ck25 = 0 time = 130
* CHECK dout1_3 vdout1_3ck25 = 1.0 time = 130
* CHECK dout1_4 vdout1_4ck25 = 0 time = 130
* CHECK dout1_5 vdout1_5ck25 = 0 time = 130
* CHECK dout1_6 vdout1_6ck25 = 1.0 time = 130
* CHECK dout1_7 vdout1_7ck25 = 0 time = 130
* CHECK dout1_8 vdout1_8ck25 = 0 time = 130
* CHECK dout1_9 vdout1_9ck25 = 1.0 time = 130
* CHECK dout1_10 vdout1_10ck25 = 0 time = 130
* CHECK dout1_11 vdout1_11ck25 = 0 time = 130
* CHECK dout1_12 vdout1_12ck25 = 1.0 time = 130
* CHECK dout1_13 vdout1_13ck25 = 0 time = 130
* CHECK dout1_14 vdout1_14ck25 = 0 time = 130
* CHECK dout1_15 vdout1_15ck25 = 1.0 time = 130
* CHECK dout1_16 vdout1_16ck25 = 1.0 time = 130
* CHECK dout1_0 vdout1_0ck29 = 1.0 time = 150
* CHECK dout1_1 vdout1_1ck29 = 1.0 time = 150
* CHECK dout1_2 vdout1_2ck29 = 1.0 time = 150
* CHECK dout1_3 vdout1_3ck29 = 1.0 time = 150
* CHECK dout1_4 vdout1_4ck29 = 1.0 time = 150
* CHECK dout1_5 vdout1_5ck29 = 1.0 time = 150
* CHECK dout1_6 vdout1_6ck29 = 1.0 time = 150
* CHECK dout1_7 vdout1_7ck29 = 1.0 time = 150
* CHECK dout1_8 vdout1_8ck29 = 1.0 time = 150
* CHECK dout1_9 vdout1_9ck29 = 1.0 time = 150
* CHECK dout1_10 vdout1_10ck29 = 0 time = 150
* CHECK dout1_11 vdout1_11ck29 = 1.0 time = 150
* CHECK dout1_12 vdout1_12ck29 = 0 time = 150
* CHECK dout1_13 vdout1_13ck29 = 0 time = 150
* CHECK dout1_14 vdout1_14ck29 = 0 time = 150
* CHECK dout1_15 vdout1_15ck29 = 1.0 time = 150
* CHECK dout1_16 vdout1_16ck29 = 1.0 time = 150
* CHECK dout1_0 vdout1_0ck31 = 1.0 time = 160
* CHECK dout1_1 vdout1_1ck31 = 0 time = 160
* CHECK dout1_2 vdout1_2ck31 = 0 time = 160
* CHECK dout1_3 vdout1_3ck31 = 1.0 time = 160
* CHECK dout1_4 vdout1_4ck31 = 0 time = 160
* CHECK dout1_5 vdout1_5ck31 = 0 time = 160
* CHECK dout1_6 vdout1_6ck31 = 0 time = 160
* CHECK dout1_7 vdout1_7ck31 = 1.0 time = 160
* CHECK dout1_8 vdout1_8ck31 = 0 time = 160
* CHECK dout1_9 vdout1_9ck31 = 1.0 time = 160
* CHECK dout1_10 vdout1_10ck31 = 1.0 time = 160
* CHECK dout1_11 vdout1_11ck31 = 0 time = 160
* CHECK dout1_12 vdout1_12ck31 = 1.0 time = 160
* CHECK dout1_13 vdout1_13ck31 = 0 time = 160
* CHECK dout1_14 vdout1_14ck31 = 0 time = 160
* CHECK dout1_15 vdout1_15ck31 = 1.0 time = 160
* CHECK dout1_16 vdout1_16ck31 = 1.0 time = 160
* CHECK dout1_0 vdout1_0ck32 = 0 time = 165
* CHECK dout1_1 vdout1_1ck32 = 1.0 time = 165
* CHECK dout1_2 vdout1_2ck32 = 1.0 time = 165
* CHECK dout1_3 vdout1_3ck32 = 1.0 time = 165
* CHECK dout1_4 vdout1_4ck32 = 0 time = 165
* CHECK dout1_5 vdout1_5ck32 = 0 time = 165
* CHECK dout1_6 vdout1_6ck32 = 1.0 time = 165
* CHECK dout1_7 vdout1_7ck32 = 1.0 time = 165
* CHECK dout1_8 vdout1_8ck32 = 0 time = 165
* CHECK dout1_9 vdout1_9ck32 = 0 time = 165
* CHECK dout1_10 vdout1_10ck32 = 1.0 time = 165
* CHECK dout1_11 vdout1_11ck32 = 1.0 time = 165
* CHECK dout1_12 vdout1_12ck32 = 1.0 time = 165
* CHECK dout1_13 vdout1_13ck32 = 1.0 time = 165
* CHECK dout1_14 vdout1_14ck32 = 1.0 time = 165
* CHECK dout1_15 vdout1_15ck32 = 0 time = 165
* CHECK dout1_16 vdout1_16ck32 = 0 time = 165
* CHECK dout1_0 vdout1_0ck33 = 1.0 time = 170
* CHECK dout1_1 vdout1_1ck33 = 1.0 time = 170
* CHECK dout1_2 vdout1_2ck33 = 0 time = 170
* CHECK dout1_3 vdout1_3ck33 = 1.0 time = 170
* CHECK dout1_4 vdout1_4ck33 = 0 time = 170
* CHECK dout1_5 vdout1_5ck33 = 0 time = 170
* CHECK dout1_6 vdout1_6ck33 = 1.0 time = 170
* CHECK dout1_7 vdout1_7ck33 = 0 time = 170
* CHECK dout1_8 vdout1_8ck33 = 0 time = 170
* CHECK dout1_9 vdout1_9ck33 = 1.0 time = 170
* CHECK dout1_10 vdout1_10ck33 = 0 time = 170
* CHECK dout1_11 vdout1_11ck33 = 0 time = 170
* CHECK dout1_12 vdout1_12ck33 = 1.0 time = 170
* CHECK dout1_13 vdout1_13ck33 = 0 time = 170
* CHECK dout1_14 vdout1_14ck33 = 0 time = 170
* CHECK dout1_15 vdout1_15ck33 = 1.0 time = 170
* CHECK dout1_16 vdout1_16ck33 = 1.0 time = 170
* CHECK dout1_0 vdout1_0ck36 = 1.0 time = 185
* CHECK dout1_1 vdout1_1ck36 = 1.0 time = 185
* CHECK dout1_2 vdout1_2ck36 = 1.0 time = 185
* CHECK dout1_3 vdout1_3ck36 = 0 time = 185
* CHECK dout1_4 vdout1_4ck36 = 1.0 time = 185
* CHECK dout1_5 vdout1_5ck36 = 1.0 time = 185
* CHECK dout1_6 vdout1_6ck36 = 1.0 time = 185
* CHECK dout1_7 vdout1_7ck36 = 1.0 time = 185
* CHECK dout1_8 vdout1_8ck36 = 1.0 time = 185
* CHECK dout1_9 vdout1_9ck36 = 0 time = 185
* CHECK dout1_10 vdout1_10ck36 = 1.0 time = 185
* CHECK dout1_11 vdout1_11ck36 = 1.0 time = 185
* CHECK dout1_12 vdout1_12ck36 = 1.0 time = 185
* CHECK dout1_13 vdout1_13ck36 = 1.0 time = 185
* CHECK dout1_14 vdout1_14ck36 = 0 time = 185
* CHECK dout1_15 vdout1_15ck36 = 0 time = 185
* CHECK dout1_16 vdout1_16ck36 = 1.0 time = 185
* CHECK dout1_0 vdout1_0ck40 = 0 time = 205
* CHECK dout1_1 vdout1_1ck40 = 1.0 time = 205
* CHECK dout1_2 vdout1_2ck40 = 1.0 time = 205
* CHECK dout1_3 vdout1_3ck40 = 1.0 time = 205
* CHECK dout1_4 vdout1_4ck40 = 0 time = 205
* CHECK dout1_5 vdout1_5ck40 = 0 time = 205
* CHECK dout1_6 vdout1_6ck40 = 1.0 time = 205
* CHECK dout1_7 vdout1_7ck40 = 1.0 time = 205
* CHECK dout1_8 vdout1_8ck40 = 0 time = 205
* CHECK dout1_9 vdout1_9ck40 = 0 time = 205
* CHECK dout1_10 vdout1_10ck40 = 1.0 time = 205
* CHECK dout1_11 vdout1_11ck40 = 1.0 time = 205
* CHECK dout1_12 vdout1_12ck40 = 1.0 time = 205
* CHECK dout1_13 vdout1_13ck40 = 1.0 time = 205
* CHECK dout1_14 vdout1_14ck40 = 1.0 time = 205
* CHECK dout1_15 vdout1_15ck40 = 0 time = 205
* CHECK dout1_16 vdout1_16ck40 = 0 time = 205
* CHECK dout1_0 vdout1_0ck41 = 1.0 time = 210
* CHECK dout1_1 vdout1_1ck41 = 1.0 time = 210
* CHECK dout1_2 vdout1_2ck41 = 1.0 time = 210
* CHECK dout1_3 vdout1_3ck41 = 0 time = 210
* CHECK dout1_4 vdout1_4ck41 = 1.0 time = 210
* CHECK dout1_5 vdout1_5ck41 = 1.0 time = 210
* CHECK dout1_6 vdout1_6ck41 = 1.0 time = 210
* CHECK dout1_7 vdout1_7ck41 = 1.0 time = 210
* CHECK dout1_8 vdout1_8ck41 = 1.0 time = 210
* CHECK dout1_9 vdout1_9ck41 = 0 time = 210
* CHECK dout1_10 vdout1_10ck41 = 1.0 time = 210
* CHECK dout1_11 vdout1_11ck41 = 1.0 time = 210
* CHECK dout1_12 vdout1_12ck41 = 1.0 time = 210
* CHECK dout1_13 vdout1_13ck41 = 1.0 time = 210
* CHECK dout1_14 vdout1_14ck41 = 0 time = 210
* CHECK dout1_15 vdout1_15ck41 = 0 time = 210
* CHECK dout1_16 vdout1_16ck41 = 1.0 time = 210
* CHECK dout1_0 vdout1_0ck42 = 1.0 time = 215
* CHECK dout1_1 vdout1_1ck42 = 1.0 time = 215
* CHECK dout1_2 vdout1_2ck42 = 1.0 time = 215
* CHECK dout1_3 vdout1_3ck42 = 1.0 time = 215
* CHECK dout1_4 vdout1_4ck42 = 1.0 time = 215
* CHECK dout1_5 vdout1_5ck42 = 1.0 time = 215
* CHECK dout1_6 vdout1_6ck42 = 1.0 time = 215
* CHECK dout1_7 vdout1_7ck42 = 0 time = 215
* CHECK dout1_8 vdout1_8ck42 = 1.0 time = 215
* CHECK dout1_9 vdout1_9ck42 = 1.0 time = 215
* CHECK dout1_10 vdout1_10ck42 = 1.0 time = 215
* CHECK dout1_11 vdout1_11ck42 = 0 time = 215
* CHECK dout1_12 vdout1_12ck42 = 1.0 time = 215
* CHECK dout1_13 vdout1_13ck42 = 1.0 time = 215
* CHECK dout1_14 vdout1_14ck42 = 1.0 time = 215
* CHECK dout1_15 vdout1_15ck42 = 0 time = 215
* CHECK dout1_16 vdout1_16ck42 = 1.0 time = 215
* CHECK dout1_0 vdout1_0ck43 = 1.0 time = 220
* CHECK dout1_1 vdout1_1ck43 = 1.0 time = 220
* CHECK dout1_2 vdout1_2ck43 = 1.0 time = 220
* CHECK dout1_3 vdout1_3ck43 = 1.0 time = 220
* CHECK dout1_4 vdout1_4ck43 = 1.0 time = 220
* CHECK dout1_5 vdout1_5ck43 = 1.0 time = 220
* CHECK dout1_6 vdout1_6ck43 = 1.0 time = 220
* CHECK dout1_7 vdout1_7ck43 = 1.0 time = 220
* CHECK dout1_8 vdout1_8ck43 = 1.0 time = 220
* CHECK dout1_9 vdout1_9ck43 = 1.0 time = 220
* CHECK dout1_10 vdout1_10ck43 = 0 time = 220
* CHECK dout1_11 vdout1_11ck43 = 1.0 time = 220
* CHECK dout1_12 vdout1_12ck43 = 0 time = 220
* CHECK dout1_13 vdout1_13ck43 = 0 time = 220
* CHECK dout1_14 vdout1_14ck43 = 0 time = 220
* CHECK dout1_15 vdout1_15ck43 = 1.0 time = 220
* CHECK dout1_16 vdout1_16ck43 = 1.0 time = 220
* CHECK dout1_0 vdout1_0ck45 = 0 time = 230
* CHECK dout1_1 vdout1_1ck45 = 1.0 time = 230
* CHECK dout1_2 vdout1_2ck45 = 1.0 time = 230
* CHECK dout1_3 vdout1_3ck45 = 1.0 time = 230
* CHECK dout1_4 vdout1_4ck45 = 0 time = 230
* CHECK dout1_5 vdout1_5ck45 = 0 time = 230
* CHECK dout1_6 vdout1_6ck45 = 1.0 time = 230
* CHECK dout1_7 vdout1_7ck45 = 1.0 time = 230
* CHECK dout1_8 vdout1_8ck45 = 0 time = 230
* CHECK dout1_9 vdout1_9ck45 = 0 time = 230
* CHECK dout1_10 vdout1_10ck45 = 1.0 time = 230
* CHECK dout1_11 vdout1_11ck45 = 1.0 time = 230
* CHECK dout1_12 vdout1_12ck45 = 1.0 time = 230
* CHECK dout1_13 vdout1_13ck45 = 1.0 time = 230
* CHECK dout1_14 vdout1_14ck45 = 1.0 time = 230
* CHECK dout1_15 vdout1_15ck45 = 0 time = 230
* CHECK dout1_16 vdout1_16ck45 = 0 time = 230
* CHECK dout1_0 vdout1_0ck46 = 1.0 time = 235
* CHECK dout1_1 vdout1_1ck46 = 1.0 time = 235
* CHECK dout1_2 vdout1_2ck46 = 0 time = 235
* CHECK dout1_3 vdout1_3ck46 = 0 time = 235
* CHECK dout1_4 vdout1_4ck46 = 0 time = 235
* CHECK dout1_5 vdout1_5ck46 = 0 time = 235
* CHECK dout1_6 vdout1_6ck46 = 0 time = 235
* CHECK dout1_7 vdout1_7ck46 = 1.0 time = 235
* CHECK dout1_8 vdout1_8ck46 = 0 time = 235
* CHECK dout1_9 vdout1_9ck46 = 1.0 time = 235
* CHECK dout1_10 vdout1_10ck46 = 1.0 time = 235
* CHECK dout1_11 vdout1_11ck46 = 0 time = 235
* CHECK dout1_12 vdout1_12ck46 = 1.0 time = 235
* CHECK dout1_13 vdout1_13ck46 = 0 time = 235
* CHECK dout1_14 vdout1_14ck46 = 1.0 time = 235
* CHECK dout1_15 vdout1_15ck46 = 1.0 time = 235
* CHECK dout1_16 vdout1_16ck46 = 1.0 time = 235
* CHECK dout1_0 vdout1_0ck53 = 0 time = 270
* CHECK dout1_1 vdout1_1ck53 = 1.0 time = 270
* CHECK dout1_2 vdout1_2ck53 = 0 time = 270
* CHECK dout1_3 vdout1_3ck53 = 1.0 time = 270
* CHECK dout1_4 vdout1_4ck53 = 1.0 time = 270
* CHECK dout1_5 vdout1_5ck53 = 0 time = 270
* CHECK dout1_6 vdout1_6ck53 = 1.0 time = 270
* CHECK dout1_7 vdout1_7ck53 = 1.0 time = 270
* CHECK dout1_8 vdout1_8ck53 = 1.0 time = 270
* CHECK dout1_9 vdout1_9ck53 = 0 time = 270
* CHECK dout1_10 vdout1_10ck53 = 0 time = 270
* CHECK dout1_11 vdout1_11ck53 = 0 time = 270
* CHECK dout1_12 vdout1_12ck53 = 1.0 time = 270
* CHECK dout1_13 vdout1_13ck53 = 0 time = 270
* CHECK dout1_14 vdout1_14ck53 = 1.0 time = 270
* CHECK dout1_15 vdout1_15ck53 = 0 time = 270
* CHECK dout1_16 vdout1_16ck53 = 1.0 time = 270
* CHECK dout1_0 vdout1_0ck54 = 0 time = 275
* CHECK dout1_1 vdout1_1ck54 = 1.0 time = 275
* CHECK dout1_2 vdout1_2ck54 = 1.0 time = 275
* CHECK dout1_3 vdout1_3ck54 = 1.0 time = 275
* CHECK dout1_4 vdout1_4ck54 = 1.0 time = 275
* CHECK dout1_5 vdout1_5ck54 = 0 time = 275
* CHECK dout1_6 vdout1_6ck54 = 0 time = 275
* CHECK dout1_7 vdout1_7ck54 = 0 time = 275
* CHECK dout1_8 vdout1_8ck54 = 1.0 time = 275
* CHECK dout1_9 vdout1_9ck54 = 0 time = 275
* CHECK dout1_10 vdout1_10ck54 = 1.0 time = 275
* CHECK dout1_11 vdout1_11ck54 = 1.0 time = 275
* CHECK dout1_12 vdout1_12ck54 = 0 time = 275
* CHECK dout1_13 vdout1_13ck54 = 0 time = 275
* CHECK dout1_14 vdout1_14ck54 = 1.0 time = 275
* CHECK dout1_15 vdout1_15ck54 = 0 time = 275
* CHECK dout1_16 vdout1_16ck54 = 0 time = 275
* CHECK dout1_0 vdout1_0ck57 = 0 time = 290
* CHECK dout1_1 vdout1_1ck57 = 1.0 time = 290
* CHECK dout1_2 vdout1_2ck57 = 1.0 time = 290
* CHECK dout1_3 vdout1_3ck57 = 1.0 time = 290
* CHECK dout1_4 vdout1_4ck57 = 0 time = 290
* CHECK dout1_5 vdout1_5ck57 = 0 time = 290
* CHECK dout1_6 vdout1_6ck57 = 1.0 time = 290
* CHECK dout1_7 vdout1_7ck57 = 1.0 time = 290
* CHECK dout1_8 vdout1_8ck57 = 0 time = 290
* CHECK dout1_9 vdout1_9ck57 = 0 time = 290
* CHECK dout1_10 vdout1_10ck57 = 1.0 time = 290
* CHECK dout1_11 vdout1_11ck57 = 1.0 time = 290
* CHECK dout1_12 vdout1_12ck57 = 1.0 time = 290
* CHECK dout1_13 vdout1_13ck57 = 1.0 time = 290
* CHECK dout1_14 vdout1_14ck57 = 1.0 time = 290
* CHECK dout1_15 vdout1_15ck57 = 0 time = 290
* CHECK dout1_16 vdout1_16ck57 = 0 time = 290
* CHECK dout1_0 vdout1_0ck58 = 0 time = 295
* CHECK dout1_1 vdout1_1ck58 = 1.0 time = 295
* CHECK dout1_2 vdout1_2ck58 = 1.0 time = 295
* CHECK dout1_3 vdout1_3ck58 = 1.0 time = 295
* CHECK dout1_4 vdout1_4ck58 = 0 time = 295
* CHECK dout1_5 vdout1_5ck58 = 0 time = 295
* CHECK dout1_6 vdout1_6ck58 = 1.0 time = 295
* CHECK dout1_7 vdout1_7ck58 = 1.0 time = 295
* CHECK dout1_8 vdout1_8ck58 = 0 time = 295
* CHECK dout1_9 vdout1_9ck58 = 0 time = 295
* CHECK dout1_10 vdout1_10ck58 = 0 time = 295
* CHECK dout1_11 vdout1_11ck58 = 1.0 time = 295
* CHECK dout1_12 vdout1_12ck58 = 1.0 time = 295
* CHECK dout1_13 vdout1_13ck58 = 0 time = 295
* CHECK dout1_14 vdout1_14ck58 = 1.0 time = 295
* CHECK dout1_15 vdout1_15ck58 = 0 time = 295
* CHECK dout1_16 vdout1_16ck58 = 1.0 time = 295
* CHECK dout1_0 vdout1_0ck59 = 1.0 time = 300
* CHECK dout1_1 vdout1_1ck59 = 0 time = 300
* CHECK dout1_2 vdout1_2ck59 = 1.0 time = 300
* CHECK dout1_3 vdout1_3ck59 = 0 time = 300
* CHECK dout1_4 vdout1_4ck59 = 1.0 time = 300
* CHECK dout1_5 vdout1_5ck59 = 1.0 time = 300
* CHECK dout1_6 vdout1_6ck59 = 1.0 time = 300
* CHECK dout1_7 vdout1_7ck59 = 1.0 time = 300
* CHECK dout1_8 vdout1_8ck59 = 1.0 time = 300
* CHECK dout1_9 vdout1_9ck59 = 0 time = 300
* CHECK dout1_10 vdout1_10ck59 = 0 time = 300
* CHECK dout1_11 vdout1_11ck59 = 1.0 time = 300
* CHECK dout1_12 vdout1_12ck59 = 1.0 time = 300
* CHECK dout1_13 vdout1_13ck59 = 0 time = 300
* CHECK dout1_14 vdout1_14ck59 = 1.0 time = 300
* CHECK dout1_15 vdout1_15ck59 = 0 time = 300
* CHECK dout1_16 vdout1_16ck59 = 1.0 time = 300
* CHECK dout1_0 vdout1_0ck61 = 0 time = 310
* CHECK dout1_1 vdout1_1ck61 = 1.0 time = 310
* CHECK dout1_2 vdout1_2ck61 = 1.0 time = 310
* CHECK dout1_3 vdout1_3ck61 = 0 time = 310
* CHECK dout1_4 vdout1_4ck61 = 1.0 time = 310
* CHECK dout1_5 vdout1_5ck61 = 0 time = 310
* CHECK dout1_6 vdout1_6ck61 = 0 time = 310
* CHECK dout1_7 vdout1_7ck61 = 0 time = 310
* CHECK dout1_8 vdout1_8ck61 = 0 time = 310
* CHECK dout1_9 vdout1_9ck61 = 0 time = 310
* CHECK dout1_10 vdout1_10ck61 = 1.0 time = 310
* CHECK dout1_11 vdout1_11ck61 = 0 time = 310
* CHECK dout1_12 vdout1_12ck61 = 1.0 time = 310
* CHECK dout1_13 vdout1_13ck61 = 0 time = 310
* CHECK dout1_14 vdout1_14ck61 = 0 time = 310
* CHECK dout1_15 vdout1_15ck61 = 1.0 time = 310
* CHECK dout1_16 vdout1_16ck61 = 1.0 time = 310
* CHECK dout1_0 vdout1_0ck67 = 0 time = 340
* CHECK dout1_1 vdout1_1ck67 = 1.0 time = 340
* CHECK dout1_2 vdout1_2ck67 = 0 time = 340
* CHECK dout1_3 vdout1_3ck67 = 0 time = 340
* CHECK dout1_4 vdout1_4ck67 = 0 time = 340
* CHECK dout1_5 vdout1_5ck67 = 0 time = 340
* CHECK dout1_6 vdout1_6ck67 = 1.0 time = 340
* CHECK dout1_7 vdout1_7ck67 = 1.0 time = 340
* CHECK dout1_8 vdout1_8ck67 = 0 time = 340
* CHECK dout1_9 vdout1_9ck67 = 0 time = 340
* CHECK dout1_10 vdout1_10ck67 = 1.0 time = 340
* CHECK dout1_11 vdout1_11ck67 = 0 time = 340
* CHECK dout1_12 vdout1_12ck67 = 1.0 time = 340
* CHECK dout1_13 vdout1_13ck67 = 1.0 time = 340
* CHECK dout1_14 vdout1_14ck67 = 0 time = 340
* CHECK dout1_15 vdout1_15ck67 = 1.0 time = 340
* CHECK dout1_16 vdout1_16ck67 = 0 time = 340
* CHECK dout1_0 vdout1_0ck70 = 0 time = 355
* CHECK dout1_1 vdout1_1ck70 = 1.0 time = 355
* CHECK dout1_2 vdout1_2ck70 = 0 time = 355
* CHECK dout1_3 vdout1_3ck70 = 0 time = 355
* CHECK dout1_4 vdout1_4ck70 = 0 time = 355
* CHECK dout1_5 vdout1_5ck70 = 0 time = 355
* CHECK dout1_6 vdout1_6ck70 = 1.0 time = 355
* CHECK dout1_7 vdout1_7ck70 = 1.0 time = 355
* CHECK dout1_8 vdout1_8ck70 = 0 time = 355
* CHECK dout1_9 vdout1_9ck70 = 0 time = 355
* CHECK dout1_10 vdout1_10ck70 = 1.0 time = 355
* CHECK dout1_11 vdout1_11ck70 = 0 time = 355
* CHECK dout1_12 vdout1_12ck70 = 1.0 time = 355
* CHECK dout1_13 vdout1_13ck70 = 1.0 time = 355
* CHECK dout1_14 vdout1_14ck70 = 0 time = 355
* CHECK dout1_15 vdout1_15ck70 = 1.0 time = 355
* CHECK dout1_16 vdout1_16ck70 = 0 time = 355
* CHECK dout1_0 vdout1_0ck73 = 0 time = 370
* CHECK dout1_1 vdout1_1ck73 = 1.0 time = 370
* CHECK dout1_2 vdout1_2ck73 = 0 time = 370
* CHECK dout1_3 vdout1_3ck73 = 0 time = 370
* CHECK dout1_4 vdout1_4ck73 = 0 time = 370
* CHECK dout1_5 vdout1_5ck73 = 0 time = 370
* CHECK dout1_6 vdout1_6ck73 = 1.0 time = 370
* CHECK dout1_7 vdout1_7ck73 = 1.0 time = 370
* CHECK dout1_8 vdout1_8ck73 = 0 time = 370
* CHECK dout1_9 vdout1_9ck73 = 0 time = 370
* CHECK dout1_10 vdout1_10ck73 = 1.0 time = 370
* CHECK dout1_11 vdout1_11ck73 = 0 time = 370
* CHECK dout1_12 vdout1_12ck73 = 1.0 time = 370
* CHECK dout1_13 vdout1_13ck73 = 1.0 time = 370
* CHECK dout1_14 vdout1_14ck73 = 0 time = 370
* CHECK dout1_15 vdout1_15ck73 = 1.0 time = 370
* CHECK dout1_16 vdout1_16ck73 = 0 time = 370
* CHECK dout1_0 vdout1_0ck76 = 0 time = 385
* CHECK dout1_1 vdout1_1ck76 = 1.0 time = 385
* CHECK dout1_2 vdout1_2ck76 = 1.0 time = 385
* CHECK dout1_3 vdout1_3ck76 = 0 time = 385
* CHECK dout1_4 vdout1_4ck76 = 1.0 time = 385
* CHECK dout1_5 vdout1_5ck76 = 0 time = 385
* CHECK dout1_6 vdout1_6ck76 = 0 time = 385
* CHECK dout1_7 vdout1_7ck76 = 0 time = 385
* CHECK dout1_8 vdout1_8ck76 = 0 time = 385
* CHECK dout1_9 vdout1_9ck76 = 0 time = 385
* CHECK dout1_10 vdout1_10ck76 = 1.0 time = 385
* CHECK dout1_11 vdout1_11ck76 = 0 time = 385
* CHECK dout1_12 vdout1_12ck76 = 1.0 time = 385
* CHECK dout1_13 vdout1_13ck76 = 0 time = 385
* CHECK dout1_14 vdout1_14ck76 = 0 time = 385
* CHECK dout1_15 vdout1_15ck76 = 1.0 time = 385
* CHECK dout1_16 vdout1_16ck76 = 1.0 time = 385
* CHECK dout1_0 vdout1_0ck77 = 0 time = 390
* CHECK dout1_1 vdout1_1ck77 = 0 time = 390
* CHECK dout1_2 vdout1_2ck77 = 0 time = 390
* CHECK dout1_3 vdout1_3ck77 = 0 time = 390
* CHECK dout1_4 vdout1_4ck77 = 0 time = 390
* CHECK dout1_5 vdout1_5ck77 = 1.0 time = 390
* CHECK dout1_6 vdout1_6ck77 = 0 time = 390
* CHECK dout1_7 vdout1_7ck77 = 0 time = 390
* CHECK dout1_8 vdout1_8ck77 = 0 time = 390
* CHECK dout1_9 vdout1_9ck77 = 1.0 time = 390
* CHECK dout1_10 vdout1_10ck77 = 1.0 time = 390
* CHECK dout1_11 vdout1_11ck77 = 0 time = 390
* CHECK dout1_12 vdout1_12ck77 = 0 time = 390
* CHECK dout1_13 vdout1_13ck77 = 0 time = 390
* CHECK dout1_14 vdout1_14ck77 = 0 time = 390
* CHECK dout1_15 vdout1_15ck77 = 1.0 time = 390
* CHECK dout1_16 vdout1_16ck77 = 0 time = 390
* CHECK dout1_0 vdout1_0ck79 = 0 time = 400
* CHECK dout1_1 vdout1_1ck79 = 1.0 time = 400
* CHECK dout1_2 vdout1_2ck79 = 1.0 time = 400
* CHECK dout1_3 vdout1_3ck79 = 1.0 time = 400
* CHECK dout1_4 vdout1_4ck79 = 0 time = 400
* CHECK dout1_5 vdout1_5ck79 = 0 time = 400
* CHECK dout1_6 vdout1_6ck79 = 1.0 time = 400
* CHECK dout1_7 vdout1_7ck79 = 1.0 time = 400
* CHECK dout1_8 vdout1_8ck79 = 0 time = 400
* CHECK dout1_9 vdout1_9ck79 = 0 time = 400
* CHECK dout1_10 vdout1_10ck79 = 0 time = 400
* CHECK dout1_11 vdout1_11ck79 = 1.0 time = 400
* CHECK dout1_12 vdout1_12ck79 = 1.0 time = 400
* CHECK dout1_13 vdout1_13ck79 = 0 time = 400
* CHECK dout1_14 vdout1_14ck79 = 1.0 time = 400
* CHECK dout1_15 vdout1_15ck79 = 0 time = 400
* CHECK dout1_16 vdout1_16ck79 = 1.0 time = 400
* CHECK dout1_0 vdout1_0ck80 = 1.0 time = 405
* CHECK dout1_1 vdout1_1ck80 = 1.0 time = 405
* CHECK dout1_2 vdout1_2ck80 = 1.0 time = 405
* CHECK dout1_3 vdout1_3ck80 = 1.0 time = 405
* CHECK dout1_4 vdout1_4ck80 = 0 time = 405
* CHECK dout1_5 vdout1_5ck80 = 1.0 time = 405
* CHECK dout1_6 vdout1_6ck80 = 1.0 time = 405
* CHECK dout1_7 vdout1_7ck80 = 0 time = 405
* CHECK dout1_8 vdout1_8ck80 = 1.0 time = 405
* CHECK dout1_9 vdout1_9ck80 = 1.0 time = 405
* CHECK dout1_10 vdout1_10ck80 = 1.0 time = 405
* CHECK dout1_11 vdout1_11ck80 = 0 time = 405
* CHECK dout1_12 vdout1_12ck80 = 1.0 time = 405
* CHECK dout1_13 vdout1_13ck80 = 0 time = 405
* CHECK dout1_14 vdout1_14ck80 = 1.0 time = 405
* CHECK dout1_15 vdout1_15ck80 = 0 time = 405
* CHECK dout1_16 vdout1_16ck80 = 1.0 time = 405
* CHECK dout1_0 vdout1_0ck87 = 0 time = 440
* CHECK dout1_1 vdout1_1ck87 = 0 time = 440
* CHECK dout1_2 vdout1_2ck87 = 0 time = 440
* CHECK dout1_3 vdout1_3ck87 = 0 time = 440
* CHECK dout1_4 vdout1_4ck87 = 1.0 time = 440
* CHECK dout1_5 vdout1_5ck87 = 1.0 time = 440
* CHECK dout1_6 vdout1_6ck87 = 1.0 time = 440
* CHECK dout1_7 vdout1_7ck87 = 1.0 time = 440
* CHECK dout1_8 vdout1_8ck87 = 1.0 time = 440
* CHECK dout1_9 vdout1_9ck87 = 1.0 time = 440
* CHECK dout1_10 vdout1_10ck87 = 0 time = 440
* CHECK dout1_11 vdout1_11ck87 = 0 time = 440
* CHECK dout1_12 vdout1_12ck87 = 1.0 time = 440
* CHECK dout1_13 vdout1_13ck87 = 0 time = 440
* CHECK dout1_14 vdout1_14ck87 = 0 time = 440
* CHECK dout1_15 vdout1_15ck87 = 1.0 time = 440
* CHECK dout1_16 vdout1_16ck87 = 1.0 time = 440
* CHECK dout1_0 vdout1_0ck89 = 0 time = 450
* CHECK dout1_1 vdout1_1ck89 = 1.0 time = 450
* CHECK dout1_2 vdout1_2ck89 = 1.0 time = 450
* CHECK dout1_3 vdout1_3ck89 = 1.0 time = 450
* CHECK dout1_4 vdout1_4ck89 = 0 time = 450
* CHECK dout1_5 vdout1_5ck89 = 0 time = 450
* CHECK dout1_6 vdout1_6ck89 = 1.0 time = 450
* CHECK dout1_7 vdout1_7ck89 = 1.0 time = 450
* CHECK dout1_8 vdout1_8ck89 = 0 time = 450
* CHECK dout1_9 vdout1_9ck89 = 0 time = 450
* CHECK dout1_10 vdout1_10ck89 = 0 time = 450
* CHECK dout1_11 vdout1_11ck89 = 1.0 time = 450
* CHECK dout1_12 vdout1_12ck89 = 1.0 time = 450
* CHECK dout1_13 vdout1_13ck89 = 0 time = 450
* CHECK dout1_14 vdout1_14ck89 = 1.0 time = 450
* CHECK dout1_15 vdout1_15ck89 = 0 time = 450
* CHECK dout1_16 vdout1_16ck89 = 1.0 time = 450
* CHECK dout1_0 vdout1_0ck90 = 0 time = 455
* CHECK dout1_1 vdout1_1ck90 = 1.0 time = 455
* CHECK dout1_2 vdout1_2ck90 = 0 time = 455
* CHECK dout1_3 vdout1_3ck90 = 0 time = 455
* CHECK dout1_4 vdout1_4ck90 = 0 time = 455
* CHECK dout1_5 vdout1_5ck90 = 0 time = 455
* CHECK dout1_6 vdout1_6ck90 = 0 time = 455
* CHECK dout1_7 vdout1_7ck90 = 1.0 time = 455
* CHECK dout1_8 vdout1_8ck90 = 0 time = 455
* CHECK dout1_9 vdout1_9ck90 = 1.0 time = 455
* CHECK dout1_10 vdout1_10ck90 = 0 time = 455
* CHECK dout1_11 vdout1_11ck90 = 1.0 time = 455
* CHECK dout1_12 vdout1_12ck90 = 0 time = 455
* CHECK dout1_13 vdout1_13ck90 = 0 time = 455
* CHECK dout1_14 vdout1_14ck90 = 1.0 time = 455
* CHECK dout1_15 vdout1_15ck90 = 0 time = 455
* CHECK dout1_16 vdout1_16ck90 = 1.0 time = 455
* CHECK dout1_0 vdout1_0ck93 = 0 time = 470
* CHECK dout1_1 vdout1_1ck93 = 1.0 time = 470
* CHECK dout1_2 vdout1_2ck93 = 1.0 time = 470
* CHECK dout1_3 vdout1_3ck93 = 1.0 time = 470
* CHECK dout1_4 vdout1_4ck93 = 0 time = 470
* CHECK dout1_5 vdout1_5ck93 = 0 time = 470
* CHECK dout1_6 vdout1_6ck93 = 1.0 time = 470
* CHECK dout1_7 vdout1_7ck93 = 1.0 time = 470
* CHECK dout1_8 vdout1_8ck93 = 0 time = 470
* CHECK dout1_9 vdout1_9ck93 = 0 time = 470
* CHECK dout1_10 vdout1_10ck93 = 0 time = 470
* CHECK dout1_11 vdout1_11ck93 = 1.0 time = 470
* CHECK dout1_12 vdout1_12ck93 = 1.0 time = 470
* CHECK dout1_13 vdout1_13ck93 = 0 time = 470
* CHECK dout1_14 vdout1_14ck93 = 1.0 time = 470
* CHECK dout1_15 vdout1_15ck93 = 0 time = 470
* CHECK dout1_16 vdout1_16ck93 = 1.0 time = 470
* CHECK dout1_0 vdout1_0ck99 = 0 time = 500
* CHECK dout1_1 vdout1_1ck99 = 1.0 time = 500
* CHECK dout1_2 vdout1_2ck99 = 1.0 time = 500
* CHECK dout1_3 vdout1_3ck99 = 0 time = 500
* CHECK dout1_4 vdout1_4ck99 = 0 time = 500
* CHECK dout1_5 vdout1_5ck99 = 0 time = 500
* CHECK dout1_6 vdout1_6ck99 = 1.0 time = 500
* CHECK dout1_7 vdout1_7ck99 = 1.0 time = 500
* CHECK dout1_8 vdout1_8ck99 = 0 time = 500
* CHECK dout1_9 vdout1_9ck99 = 0 time = 500
* CHECK dout1_10 vdout1_10ck99 = 0 time = 500
* CHECK dout1_11 vdout1_11ck99 = 0 time = 500
* CHECK dout1_12 vdout1_12ck99 = 1.0 time = 500
* CHECK dout1_13 vdout1_13ck99 = 0 time = 500
* CHECK dout1_14 vdout1_14ck99 = 1.0 time = 500
* CHECK dout1_15 vdout1_15ck99 = 0 time = 500
* CHECK dout1_16 vdout1_16ck99 = 1.0 time = 500
* CHECK dout1_0 vdout1_0ck100 = 1.0 time = 505
* CHECK dout1_1 vdout1_1ck100 = 1.0 time = 505
* CHECK dout1_2 vdout1_2ck100 = 1.0 time = 505
* CHECK dout1_3 vdout1_3ck100 = 0 time = 505
* CHECK dout1_4 vdout1_4ck100 = 1.0 time = 505
* CHECK dout1_5 vdout1_5ck100 = 0 time = 505
* CHECK dout1_6 vdout1_6ck100 = 1.0 time = 505
* CHECK dout1_7 vdout1_7ck100 = 0 time = 505
* CHECK dout1_8 vdout1_8ck100 = 0 time = 505
* CHECK dout1_9 vdout1_9ck100 = 1.0 time = 505
* CHECK dout1_10 vdout1_10ck100 = 1.0 time = 505
* CHECK dout1_11 vdout1_11ck100 = 0 time = 505
* CHECK dout1_12 vdout1_12ck100 = 0 time = 505
* CHECK dout1_13 vdout1_13ck100 = 1.0 time = 505
* CHECK dout1_14 vdout1_14ck100 = 0 time = 505
* CHECK dout1_15 vdout1_15ck100 = 0 time = 505
* CHECK dout1_16 vdout1_16ck100 = 1.0 time = 505
* CHECK dout1_0 vdout1_0ck101 = 0 time = 510
* CHECK dout1_1 vdout1_1ck101 = 1.0 time = 510
* CHECK dout1_2 vdout1_2ck101 = 1.0 time = 510
* CHECK dout1_3 vdout1_3ck101 = 1.0 time = 510
* CHECK dout1_4 vdout1_4ck101 = 0 time = 510
* CHECK dout1_5 vdout1_5ck101 = 0 time = 510
* CHECK dout1_6 vdout1_6ck101 = 1.0 time = 510
* CHECK dout1_7 vdout1_7ck101 = 1.0 time = 510
* CHECK dout1_8 vdout1_8ck101 = 0 time = 510
* CHECK dout1_9 vdout1_9ck101 = 0 time = 510
* CHECK dout1_10 vdout1_10ck101 = 0 time = 510
* CHECK dout1_11 vdout1_11ck101 = 1.0 time = 510
* CHECK dout1_12 vdout1_12ck101 = 1.0 time = 510
* CHECK dout1_13 vdout1_13ck101 = 0 time = 510
* CHECK dout1_14 vdout1_14ck101 = 1.0 time = 510
* CHECK dout1_15 vdout1_15ck101 = 0 time = 510
* CHECK dout1_16 vdout1_16ck101 = 1.0 time = 510
* CHECK dout1_0 vdout1_0ck102 = 1.0 time = 515
* CHECK dout1_1 vdout1_1ck102 = 0 time = 515
* CHECK dout1_2 vdout1_2ck102 = 0 time = 515
* CHECK dout1_3 vdout1_3ck102 = 0 time = 515
* CHECK dout1_4 vdout1_4ck102 = 1.0 time = 515
* CHECK dout1_5 vdout1_5ck102 = 0 time = 515
* CHECK dout1_6 vdout1_6ck102 = 1.0 time = 515
* CHECK dout1_7 vdout1_7ck102 = 0 time = 515
* CHECK dout1_8 vdout1_8ck102 = 1.0 time = 515
* CHECK dout1_9 vdout1_9ck102 = 1.0 time = 515
* CHECK dout1_10 vdout1_10ck102 = 1.0 time = 515
* CHECK dout1_11 vdout1_11ck102 = 0 time = 515
* CHECK dout1_12 vdout1_12ck102 = 0 time = 515
* CHECK dout1_13 vdout1_13ck102 = 1.0 time = 515
* CHECK dout1_14 vdout1_14ck102 = 1.0 time = 515
* CHECK dout1_15 vdout1_15ck102 = 0 time = 515
* CHECK dout1_16 vdout1_16ck102 = 1.0 time = 515
* CHECK dout1_0 vdout1_0ck103 = 0 time = 520
* CHECK dout1_1 vdout1_1ck103 = 0 time = 520
* CHECK dout1_2 vdout1_2ck103 = 0 time = 520
* CHECK dout1_3 vdout1_3ck103 = 0 time = 520
* CHECK dout1_4 vdout1_4ck103 = 0 time = 520
* CHECK dout1_5 vdout1_5ck103 = 1.0 time = 520
* CHECK dout1_6 vdout1_6ck103 = 0 time = 520
* CHECK dout1_7 vdout1_7ck103 = 1.0 time = 520
* CHECK dout1_8 vdout1_8ck103 = 0 time = 520
* CHECK dout1_9 vdout1_9ck103 = 0 time = 520
* CHECK dout1_10 vdout1_10ck103 = 1.0 time = 520
* CHECK dout1_11 vdout1_11ck103 = 0 time = 520
* CHECK dout1_12 vdout1_12ck103 = 1.0 time = 520
* CHECK dout1_13 vdout1_13ck103 = 0 time = 520
* CHECK dout1_14 vdout1_14ck103 = 1.0 time = 520
* CHECK dout1_15 vdout1_15ck103 = 1.0 time = 520
* CHECK dout1_16 vdout1_16ck103 = 1.0 time = 520
* CHECK dout1_0 vdout1_0ck105 = 0 time = 530
* CHECK dout1_1 vdout1_1ck105 = 1.0 time = 530
* CHECK dout1_2 vdout1_2ck105 = 1.0 time = 530
* CHECK dout1_3 vdout1_3ck105 = 0 time = 530
* CHECK dout1_4 vdout1_4ck105 = 0 time = 530
* CHECK dout1_5 vdout1_5ck105 = 0 time = 530
* CHECK dout1_6 vdout1_6ck105 = 1.0 time = 530
* CHECK dout1_7 vdout1_7ck105 = 1.0 time = 530
* CHECK dout1_8 vdout1_8ck105 = 0 time = 530
* CHECK dout1_9 vdout1_9ck105 = 0 time = 530
* CHECK dout1_10 vdout1_10ck105 = 0 time = 530
* CHECK dout1_11 vdout1_11ck105 = 0 time = 530
* CHECK dout1_12 vdout1_12ck105 = 1.0 time = 530
* CHECK dout1_13 vdout1_13ck105 = 0 time = 530
* CHECK dout1_14 vdout1_14ck105 = 1.0 time = 530
* CHECK dout1_15 vdout1_15ck105 = 0 time = 530
* CHECK dout1_16 vdout1_16ck105 = 1.0 time = 530
* CHECK dout1_0 vdout1_0ck112 = 0 time = 565
* CHECK dout1_1 vdout1_1ck112 = 0 time = 565
* CHECK dout1_2 vdout1_2ck112 = 0 time = 565
* CHECK dout1_3 vdout1_3ck112 = 0 time = 565
* CHECK dout1_4 vdout1_4ck112 = 0 time = 565
* CHECK dout1_5 vdout1_5ck112 = 1.0 time = 565
* CHECK dout1_6 vdout1_6ck112 = 0 time = 565
* CHECK dout1_7 vdout1_7ck112 = 0 time = 565
* CHECK dout1_8 vdout1_8ck112 = 0 time = 565
* CHECK dout1_9 vdout1_9ck112 = 1.0 time = 565
* CHECK dout1_10 vdout1_10ck112 = 0 time = 565
* CHECK dout1_11 vdout1_11ck112 = 0 time = 565
* CHECK dout1_12 vdout1_12ck112 = 0 time = 565
* CHECK dout1_13 vdout1_13ck112 = 0 time = 565
* CHECK dout1_14 vdout1_14ck112 = 0 time = 565
* CHECK dout1_15 vdout1_15ck112 = 0 time = 565
* CHECK dout1_16 vdout1_16ck112 = 0 time = 565
* CHECK dout1_0 vdout1_0ck116 = 1.0 time = 585
* CHECK dout1_1 vdout1_1ck116 = 0 time = 585
* CHECK dout1_2 vdout1_2ck116 = 1.0 time = 585
* CHECK dout1_3 vdout1_3ck116 = 1.0 time = 585
* CHECK dout1_4 vdout1_4ck116 = 0 time = 585
* CHECK dout1_5 vdout1_5ck116 = 1.0 time = 585
* CHECK dout1_6 vdout1_6ck116 = 1.0 time = 585
* CHECK dout1_7 vdout1_7ck116 = 1.0 time = 585
* CHECK dout1_8 vdout1_8ck116 = 0 time = 585
* CHECK dout1_9 vdout1_9ck116 = 0 time = 585
* CHECK dout1_10 vdout1_10ck116 = 0 time = 585
* CHECK dout1_11 vdout1_11ck116 = 1.0 time = 585
* CHECK dout1_12 vdout1_12ck116 = 0 time = 585
* CHECK dout1_13 vdout1_13ck116 = 0 time = 585
* CHECK dout1_14 vdout1_14ck116 = 1.0 time = 585
* CHECK dout1_15 vdout1_15ck116 = 1.0 time = 585
* CHECK dout1_16 vdout1_16ck116 = 0 time = 585
* CHECK dout1_0 vdout1_0ck122 = 0 time = 615
* CHECK dout1_1 vdout1_1ck122 = 1.0 time = 615
* CHECK dout1_2 vdout1_2ck122 = 0 time = 615
* CHECK dout1_3 vdout1_3ck122 = 1.0 time = 615
* CHECK dout1_4 vdout1_4ck122 = 1.0 time = 615
* CHECK dout1_5 vdout1_5ck122 = 0 time = 615
* CHECK dout1_6 vdout1_6ck122 = 1.0 time = 615
* CHECK dout1_7 vdout1_7ck122 = 1.0 time = 615
* CHECK dout1_8 vdout1_8ck122 = 0 time = 615
* CHECK dout1_9 vdout1_9ck122 = 0 time = 615
* CHECK dout1_10 vdout1_10ck122 = 0 time = 615
* CHECK dout1_11 vdout1_11ck122 = 1.0 time = 615
* CHECK dout1_12 vdout1_12ck122 = 1.0 time = 615
* CHECK dout1_13 vdout1_13ck122 = 0 time = 615
* CHECK dout1_14 vdout1_14ck122 = 1.0 time = 615
* CHECK dout1_15 vdout1_15ck122 = 1.0 time = 615
* CHECK dout1_16 vdout1_16ck122 = 0 time = 615
* CHECK dout1_0 vdout1_0ck123 = 0 time = 620
* CHECK dout1_1 vdout1_1ck123 = 0 time = 620
* CHECK dout1_2 vdout1_2ck123 = 0 time = 620
* CHECK dout1_3 vdout1_3ck123 = 1.0 time = 620
* CHECK dout1_4 vdout1_4ck123 = 0 time = 620
* CHECK dout1_5 vdout1_5ck123 = 1.0 time = 620
* CHECK dout1_6 vdout1_6ck123 = 1.0 time = 620
* CHECK dout1_7 vdout1_7ck123 = 1.0 time = 620
* CHECK dout1_8 vdout1_8ck123 = 0 time = 620
* CHECK dout1_9 vdout1_9ck123 = 1.0 time = 620
* CHECK dout1_10 vdout1_10ck123 = 1.0 time = 620
* CHECK dout1_11 vdout1_11ck123 = 0 time = 620
* CHECK dout1_12 vdout1_12ck123 = 1.0 time = 620
* CHECK dout1_13 vdout1_13ck123 = 1.0 time = 620
* CHECK dout1_14 vdout1_14ck123 = 1.0 time = 620
* CHECK dout1_15 vdout1_15ck123 = 0 time = 620
* CHECK dout1_16 vdout1_16ck123 = 1.0 time = 620
* CHECK dout1_0 vdout1_0ck124 = 0 time = 625
* CHECK dout1_1 vdout1_1ck124 = 1.0 time = 625
* CHECK dout1_2 vdout1_2ck124 = 0 time = 625
* CHECK dout1_3 vdout1_3ck124 = 1.0 time = 625
* CHECK dout1_4 vdout1_4ck124 = 1.0 time = 625
* CHECK dout1_5 vdout1_5ck124 = 0 time = 625
* CHECK dout1_6 vdout1_6ck124 = 1.0 time = 625
* CHECK dout1_7 vdout1_7ck124 = 1.0 time = 625
* CHECK dout1_8 vdout1_8ck124 = 0 time = 625
* CHECK dout1_9 vdout1_9ck124 = 0 time = 625
* CHECK dout1_10 vdout1_10ck124 = 0 time = 625
* CHECK dout1_11 vdout1_11ck124 = 1.0 time = 625
* CHECK dout1_12 vdout1_12ck124 = 1.0 time = 625
* CHECK dout1_13 vdout1_13ck124 = 0 time = 625
* CHECK dout1_14 vdout1_14ck124 = 1.0 time = 625
* CHECK dout1_15 vdout1_15ck124 = 1.0 time = 625
* CHECK dout1_16 vdout1_16ck124 = 0 time = 625
* CHECK dout1_0 vdout1_0ck125 = 1.0 time = 630
* CHECK dout1_1 vdout1_1ck125 = 1.0 time = 630
* CHECK dout1_2 vdout1_2ck125 = 1.0 time = 630
* CHECK dout1_3 vdout1_3ck125 = 0 time = 630
* CHECK dout1_4 vdout1_4ck125 = 0 time = 630
* CHECK dout1_5 vdout1_5ck125 = 1.0 time = 630
* CHECK dout1_6 vdout1_6ck125 = 1.0 time = 630
* CHECK dout1_7 vdout1_7ck125 = 1.0 time = 630
* CHECK dout1_8 vdout1_8ck125 = 0 time = 630
* CHECK dout1_9 vdout1_9ck125 = 1.0 time = 630
* CHECK dout1_10 vdout1_10ck125 = 1.0 time = 630
* CHECK dout1_11 vdout1_11ck125 = 0 time = 630
* CHECK dout1_12 vdout1_12ck125 = 1.0 time = 630
* CHECK dout1_13 vdout1_13ck125 = 1.0 time = 630
* CHECK dout1_14 vdout1_14ck125 = 0 time = 630
* CHECK dout1_15 vdout1_15ck125 = 1.0 time = 630
* CHECK dout1_16 vdout1_16ck125 = 1.0 time = 630
* CHECK dout1_0 vdout1_0ck126 = 0 time = 635
* CHECK dout1_1 vdout1_1ck126 = 0 time = 635
* CHECK dout1_2 vdout1_2ck126 = 0 time = 635
* CHECK dout1_3 vdout1_3ck126 = 1.0 time = 635
* CHECK dout1_4 vdout1_4ck126 = 0 time = 635
* CHECK dout1_5 vdout1_5ck126 = 1.0 time = 635
* CHECK dout1_6 vdout1_6ck126 = 1.0 time = 635
* CHECK dout1_7 vdout1_7ck126 = 1.0 time = 635
* CHECK dout1_8 vdout1_8ck126 = 0 time = 635
* CHECK dout1_9 vdout1_9ck126 = 1.0 time = 635
* CHECK dout1_10 vdout1_10ck126 = 1.0 time = 635
* CHECK dout1_11 vdout1_11ck126 = 0 time = 635
* CHECK dout1_12 vdout1_12ck126 = 1.0 time = 635
* CHECK dout1_13 vdout1_13ck126 = 1.0 time = 635
* CHECK dout1_14 vdout1_14ck126 = 1.0 time = 635
* CHECK dout1_15 vdout1_15ck126 = 0 time = 635
* CHECK dout1_16 vdout1_16ck126 = 1.0 time = 635
* CHECK dout1_0 vdout1_0ck127 = 0 time = 640
* CHECK dout1_1 vdout1_1ck127 = 0 time = 640
* CHECK dout1_2 vdout1_2ck127 = 1.0 time = 640
* CHECK dout1_3 vdout1_3ck127 = 0 time = 640
* CHECK dout1_4 vdout1_4ck127 = 1.0 time = 640
* CHECK dout1_5 vdout1_5ck127 = 0 time = 640
* CHECK dout1_6 vdout1_6ck127 = 0 time = 640
* CHECK dout1_7 vdout1_7ck127 = 0 time = 640
* CHECK dout1_8 vdout1_8ck127 = 0 time = 640
* CHECK dout1_9 vdout1_9ck127 = 0 time = 640
* CHECK dout1_10 vdout1_10ck127 = 1.0 time = 640
* CHECK dout1_11 vdout1_11ck127 = 1.0 time = 640
* CHECK dout1_12 vdout1_12ck127 = 1.0 time = 640
* CHECK dout1_13 vdout1_13ck127 = 0 time = 640
* CHECK dout1_14 vdout1_14ck127 = 1.0 time = 640
* CHECK dout1_15 vdout1_15ck127 = 0 time = 640
* CHECK dout1_16 vdout1_16ck127 = 0 time = 640
* CHECK dout1_0 vdout1_0ck129 = 0 time = 650
* CHECK dout1_1 vdout1_1ck129 = 0 time = 650
* CHECK dout1_2 vdout1_2ck129 = 1.0 time = 650
* CHECK dout1_3 vdout1_3ck129 = 1.0 time = 650
* CHECK dout1_4 vdout1_4ck129 = 0 time = 650
* CHECK dout1_5 vdout1_5ck129 = 1.0 time = 650
* CHECK dout1_6 vdout1_6ck129 = 1.0 time = 650
* CHECK dout1_7 vdout1_7ck129 = 1.0 time = 650
* CHECK dout1_8 vdout1_8ck129 = 1.0 time = 650
* CHECK dout1_9 vdout1_9ck129 = 0 time = 650
* CHECK dout1_10 vdout1_10ck129 = 0 time = 650
* CHECK dout1_11 vdout1_11ck129 = 0 time = 650
* CHECK dout1_12 vdout1_12ck129 = 1.0 time = 650
* CHECK dout1_13 vdout1_13ck129 = 0 time = 650
* CHECK dout1_14 vdout1_14ck129 = 0 time = 650
* CHECK dout1_15 vdout1_15ck129 = 1.0 time = 650
* CHECK dout1_16 vdout1_16ck129 = 0 time = 650
* CHECK dout1_0 vdout1_0ck130 = 0 time = 655
* CHECK dout1_1 vdout1_1ck130 = 0 time = 655
* CHECK dout1_2 vdout1_2ck130 = 1.0 time = 655
* CHECK dout1_3 vdout1_3ck130 = 1.0 time = 655
* CHECK dout1_4 vdout1_4ck130 = 0 time = 655
* CHECK dout1_5 vdout1_5ck130 = 1.0 time = 655
* CHECK dout1_6 vdout1_6ck130 = 1.0 time = 655
* CHECK dout1_7 vdout1_7ck130 = 1.0 time = 655
* CHECK dout1_8 vdout1_8ck130 = 1.0 time = 655
* CHECK dout1_9 vdout1_9ck130 = 0 time = 655
* CHECK dout1_10 vdout1_10ck130 = 0 time = 655
* CHECK dout1_11 vdout1_11ck130 = 0 time = 655
* CHECK dout1_12 vdout1_12ck130 = 1.0 time = 655
* CHECK dout1_13 vdout1_13ck130 = 0 time = 655
* CHECK dout1_14 vdout1_14ck130 = 0 time = 655
* CHECK dout1_15 vdout1_15ck130 = 1.0 time = 655
* CHECK dout1_16 vdout1_16ck130 = 0 time = 655
* CHECK dout1_0 vdout1_0ck131 = 0 time = 660
* CHECK dout1_1 vdout1_1ck131 = 1.0 time = 660
* CHECK dout1_2 vdout1_2ck131 = 1.0 time = 660
* CHECK dout1_3 vdout1_3ck131 = 0 time = 660
* CHECK dout1_4 vdout1_4ck131 = 0 time = 660
* CHECK dout1_5 vdout1_5ck131 = 1.0 time = 660
* CHECK dout1_6 vdout1_6ck131 = 1.0 time = 660
* CHECK dout1_7 vdout1_7ck131 = 0 time = 660
* CHECK dout1_8 vdout1_8ck131 = 1.0 time = 660
* CHECK dout1_9 vdout1_9ck131 = 1.0 time = 660
* CHECK dout1_10 vdout1_10ck131 = 1.0 time = 660
* CHECK dout1_11 vdout1_11ck131 = 0 time = 660
* CHECK dout1_12 vdout1_12ck131 = 1.0 time = 660
* CHECK dout1_13 vdout1_13ck131 = 1.0 time = 660
* CHECK dout1_14 vdout1_14ck131 = 0 time = 660
* CHECK dout1_15 vdout1_15ck131 = 0 time = 660
* CHECK dout1_16 vdout1_16ck131 = 0 time = 660
* CHECK dout1_0 vdout1_0ck132 = 1.0 time = 665
* CHECK dout1_1 vdout1_1ck132 = 1.0 time = 665
* CHECK dout1_2 vdout1_2ck132 = 1.0 time = 665
* CHECK dout1_3 vdout1_3ck132 = 0 time = 665
* CHECK dout1_4 vdout1_4ck132 = 0 time = 665
* CHECK dout1_5 vdout1_5ck132 = 1.0 time = 665
* CHECK dout1_6 vdout1_6ck132 = 1.0 time = 665
* CHECK dout1_7 vdout1_7ck132 = 1.0 time = 665
* CHECK dout1_8 vdout1_8ck132 = 0 time = 665
* CHECK dout1_9 vdout1_9ck132 = 1.0 time = 665
* CHECK dout1_10 vdout1_10ck132 = 1.0 time = 665
* CHECK dout1_11 vdout1_11ck132 = 0 time = 665
* CHECK dout1_12 vdout1_12ck132 = 1.0 time = 665
* CHECK dout1_13 vdout1_13ck132 = 1.0 time = 665
* CHECK dout1_14 vdout1_14ck132 = 0 time = 665
* CHECK dout1_15 vdout1_15ck132 = 1.0 time = 665
* CHECK dout1_16 vdout1_16ck132 = 1.0 time = 665
* CHECK dout1_0 vdout1_0ck134 = 1.0 time = 675
* CHECK dout1_1 vdout1_1ck134 = 1.0 time = 675
* CHECK dout1_2 vdout1_2ck134 = 1.0 time = 675
* CHECK dout1_3 vdout1_3ck134 = 1.0 time = 675
* CHECK dout1_4 vdout1_4ck134 = 1.0 time = 675
* CHECK dout1_5 vdout1_5ck134 = 0 time = 675
* CHECK dout1_6 vdout1_6ck134 = 1.0 time = 675
* CHECK dout1_7 vdout1_7ck134 = 1.0 time = 675
* CHECK dout1_8 vdout1_8ck134 = 1.0 time = 675
* CHECK dout1_9 vdout1_9ck134 = 1.0 time = 675
* CHECK dout1_10 vdout1_10ck134 = 1.0 time = 675
* CHECK dout1_11 vdout1_11ck134 = 1.0 time = 675
* CHECK dout1_12 vdout1_12ck134 = 0 time = 675
* CHECK dout1_13 vdout1_13ck134 = 0 time = 675
* CHECK dout1_14 vdout1_14ck134 = 1.0 time = 675
* CHECK dout1_15 vdout1_15ck134 = 0 time = 675
* CHECK dout1_16 vdout1_16ck134 = 0 time = 675
* CHECK dout1_0 vdout1_0ck135 = 0 time = 680
* CHECK dout1_1 vdout1_1ck135 = 1.0 time = 680
* CHECK dout1_2 vdout1_2ck135 = 1.0 time = 680
* CHECK dout1_3 vdout1_3ck135 = 1.0 time = 680
* CHECK dout1_4 vdout1_4ck135 = 0 time = 680
* CHECK dout1_5 vdout1_5ck135 = 1.0 time = 680
* CHECK dout1_6 vdout1_6ck135 = 1.0 time = 680
* CHECK dout1_7 vdout1_7ck135 = 0 time = 680
* CHECK dout1_8 vdout1_8ck135 = 0 time = 680
* CHECK dout1_9 vdout1_9ck135 = 0 time = 680
* CHECK dout1_10 vdout1_10ck135 = 1.0 time = 680
* CHECK dout1_11 vdout1_11ck135 = 0 time = 680
* CHECK dout1_12 vdout1_12ck135 = 1.0 time = 680
* CHECK dout1_13 vdout1_13ck135 = 1.0 time = 680
* CHECK dout1_14 vdout1_14ck135 = 1.0 time = 680
* CHECK dout1_15 vdout1_15ck135 = 0 time = 680
* CHECK dout1_16 vdout1_16ck135 = 0 time = 680
* CHECK dout1_0 vdout1_0ck136 = 1.0 time = 685
* CHECK dout1_1 vdout1_1ck136 = 0 time = 685
* CHECK dout1_2 vdout1_2ck136 = 0 time = 685
* CHECK dout1_3 vdout1_3ck136 = 0 time = 685
* CHECK dout1_4 vdout1_4ck136 = 0 time = 685
* CHECK dout1_5 vdout1_5ck136 = 0 time = 685
* CHECK dout1_6 vdout1_6ck136 = 1.0 time = 685
* CHECK dout1_7 vdout1_7ck136 = 0 time = 685
* CHECK dout1_8 vdout1_8ck136 = 0 time = 685
* CHECK dout1_9 vdout1_9ck136 = 0 time = 685
* CHECK dout1_10 vdout1_10ck136 = 0 time = 685
* CHECK dout1_11 vdout1_11ck136 = 1.0 time = 685
* CHECK dout1_12 vdout1_12ck136 = 0 time = 685
* CHECK dout1_13 vdout1_13ck136 = 0 time = 685
* CHECK dout1_14 vdout1_14ck136 = 0 time = 685
* CHECK dout1_15 vdout1_15ck136 = 1.0 time = 685
* CHECK dout1_16 vdout1_16ck136 = 0 time = 685
* CHECK dout1_0 vdout1_0ck137 = 1.0 time = 690
* CHECK dout1_1 vdout1_1ck137 = 0 time = 690
* CHECK dout1_2 vdout1_2ck137 = 0 time = 690
* CHECK dout1_3 vdout1_3ck137 = 0 time = 690
* CHECK dout1_4 vdout1_4ck137 = 1.0 time = 690
* CHECK dout1_5 vdout1_5ck137 = 1.0 time = 690
* CHECK dout1_6 vdout1_6ck137 = 1.0 time = 690
* CHECK dout1_7 vdout1_7ck137 = 0 time = 690
* CHECK dout1_8 vdout1_8ck137 = 0 time = 690
* CHECK dout1_9 vdout1_9ck137 = 1.0 time = 690
* CHECK dout1_10 vdout1_10ck137 = 1.0 time = 690
* CHECK dout1_11 vdout1_11ck137 = 0 time = 690
* CHECK dout1_12 vdout1_12ck137 = 1.0 time = 690
* CHECK dout1_13 vdout1_13ck137 = 1.0 time = 690
* CHECK dout1_14 vdout1_14ck137 = 0 time = 690
* CHECK dout1_15 vdout1_15ck137 = 0 time = 690
* CHECK dout1_16 vdout1_16ck137 = 0 time = 690
* CHECK dout1_0 vdout1_0ck139 = 0 time = 700
* CHECK dout1_1 vdout1_1ck139 = 1.0 time = 700
* CHECK dout1_2 vdout1_2ck139 = 1.0 time = 700
* CHECK dout1_3 vdout1_3ck139 = 0 time = 700
* CHECK dout1_4 vdout1_4ck139 = 0 time = 700
* CHECK dout1_5 vdout1_5ck139 = 1.0 time = 700
* CHECK dout1_6 vdout1_6ck139 = 1.0 time = 700
* CHECK dout1_7 vdout1_7ck139 = 1.0 time = 700
* CHECK dout1_8 vdout1_8ck139 = 0 time = 700
* CHECK dout1_9 vdout1_9ck139 = 1.0 time = 700
* CHECK dout1_10 vdout1_10ck139 = 0 time = 700
* CHECK dout1_11 vdout1_11ck139 = 0 time = 700
* CHECK dout1_12 vdout1_12ck139 = 1.0 time = 700
* CHECK dout1_13 vdout1_13ck139 = 0 time = 700
* CHECK dout1_14 vdout1_14ck139 = 0 time = 700
* CHECK dout1_15 vdout1_15ck139 = 1.0 time = 700
* CHECK dout1_16 vdout1_16ck139 = 0 time = 700
* CHECK dout1_0 vdout1_0ck142 = 0 time = 715
* CHECK dout1_1 vdout1_1ck142 = 0 time = 715
* CHECK dout1_2 vdout1_2ck142 = 1.0 time = 715
* CHECK dout1_3 vdout1_3ck142 = 0 time = 715
* CHECK dout1_4 vdout1_4ck142 = 0 time = 715
* CHECK dout1_5 vdout1_5ck142 = 1.0 time = 715
* CHECK dout1_6 vdout1_6ck142 = 1.0 time = 715
* CHECK dout1_7 vdout1_7ck142 = 1.0 time = 715
* CHECK dout1_8 vdout1_8ck142 = 1.0 time = 715
* CHECK dout1_9 vdout1_9ck142 = 0 time = 715
* CHECK dout1_10 vdout1_10ck142 = 0 time = 715
* CHECK dout1_11 vdout1_11ck142 = 1.0 time = 715
* CHECK dout1_12 vdout1_12ck142 = 1.0 time = 715
* CHECK dout1_13 vdout1_13ck142 = 1.0 time = 715
* CHECK dout1_14 vdout1_14ck142 = 0 time = 715
* CHECK dout1_15 vdout1_15ck142 = 1.0 time = 715
* CHECK dout1_16 vdout1_16ck142 = 0 time = 715
* CHECK dout1_0 vdout1_0ck145 = 1.0 time = 730
* CHECK dout1_1 vdout1_1ck145 = 0 time = 730
* CHECK dout1_2 vdout1_2ck145 = 0 time = 730
* CHECK dout1_3 vdout1_3ck145 = 0 time = 730
* CHECK dout1_4 vdout1_4ck145 = 1.0 time = 730
* CHECK dout1_5 vdout1_5ck145 = 1.0 time = 730
* CHECK dout1_6 vdout1_6ck145 = 1.0 time = 730
* CHECK dout1_7 vdout1_7ck145 = 0 time = 730
* CHECK dout1_8 vdout1_8ck145 = 0 time = 730
* CHECK dout1_9 vdout1_9ck145 = 1.0 time = 730
* CHECK dout1_10 vdout1_10ck145 = 1.0 time = 730
* CHECK dout1_11 vdout1_11ck145 = 0 time = 730
* CHECK dout1_12 vdout1_12ck145 = 1.0 time = 730
* CHECK dout1_13 vdout1_13ck145 = 1.0 time = 730
* CHECK dout1_14 vdout1_14ck145 = 0 time = 730
* CHECK dout1_15 vdout1_15ck145 = 0 time = 730
* CHECK dout1_16 vdout1_16ck145 = 0 time = 730
* CHECK dout1_0 vdout1_0ck146 = 0 time = 735
* CHECK dout1_1 vdout1_1ck146 = 1.0 time = 735
* CHECK dout1_2 vdout1_2ck146 = 0 time = 735
* CHECK dout1_3 vdout1_3ck146 = 0 time = 735
* CHECK dout1_4 vdout1_4ck146 = 0 time = 735
* CHECK dout1_5 vdout1_5ck146 = 0 time = 735
* CHECK dout1_6 vdout1_6ck146 = 0 time = 735
* CHECK dout1_7 vdout1_7ck146 = 1.0 time = 735
* CHECK dout1_8 vdout1_8ck146 = 0 time = 735
* CHECK dout1_9 vdout1_9ck146 = 1.0 time = 735
* CHECK dout1_10 vdout1_10ck146 = 1.0 time = 735
* CHECK dout1_11 vdout1_11ck146 = 1.0 time = 735
* CHECK dout1_12 vdout1_12ck146 = 1.0 time = 735
* CHECK dout1_13 vdout1_13ck146 = 0 time = 735
* CHECK dout1_14 vdout1_14ck146 = 1.0 time = 735
* CHECK dout1_15 vdout1_15ck146 = 1.0 time = 735
* CHECK dout1_16 vdout1_16ck146 = 1.0 time = 735
* CHECK dout1_0 vdout1_0ck147 = 0 time = 740
* CHECK dout1_1 vdout1_1ck147 = 0 time = 740
* CHECK dout1_2 vdout1_2ck147 = 1.0 time = 740
* CHECK dout1_3 vdout1_3ck147 = 0 time = 740
* CHECK dout1_4 vdout1_4ck147 = 0 time = 740
* CHECK dout1_5 vdout1_5ck147 = 1.0 time = 740
* CHECK dout1_6 vdout1_6ck147 = 1.0 time = 740
* CHECK dout1_7 vdout1_7ck147 = 1.0 time = 740
* CHECK dout1_8 vdout1_8ck147 = 1.0 time = 740
* CHECK dout1_9 vdout1_9ck147 = 0 time = 740
* CHECK dout1_10 vdout1_10ck147 = 0 time = 740
* CHECK dout1_11 vdout1_11ck147 = 1.0 time = 740
* CHECK dout1_12 vdout1_12ck147 = 1.0 time = 740
* CHECK dout1_13 vdout1_13ck147 = 1.0 time = 740
* CHECK dout1_14 vdout1_14ck147 = 0 time = 740
* CHECK dout1_15 vdout1_15ck147 = 1.0 time = 740
* CHECK dout1_16 vdout1_16ck147 = 0 time = 740
* CHECK dout1_0 vdout1_0ck148 = 0 time = 745
* CHECK dout1_1 vdout1_1ck148 = 0 time = 745
* CHECK dout1_2 vdout1_2ck148 = 1.0 time = 745
* CHECK dout1_3 vdout1_3ck148 = 0 time = 745
* CHECK dout1_4 vdout1_4ck148 = 0 time = 745
* CHECK dout1_5 vdout1_5ck148 = 1.0 time = 745
* CHECK dout1_6 vdout1_6ck148 = 1.0 time = 745
* CHECK dout1_7 vdout1_7ck148 = 1.0 time = 745
* CHECK dout1_8 vdout1_8ck148 = 1.0 time = 745
* CHECK dout1_9 vdout1_9ck148 = 0 time = 745
* CHECK dout1_10 vdout1_10ck148 = 0 time = 745
* CHECK dout1_11 vdout1_11ck148 = 1.0 time = 745
* CHECK dout1_12 vdout1_12ck148 = 1.0 time = 745
* CHECK dout1_13 vdout1_13ck148 = 1.0 time = 745
* CHECK dout1_14 vdout1_14ck148 = 0 time = 745
* CHECK dout1_15 vdout1_15ck148 = 1.0 time = 745
* CHECK dout1_16 vdout1_16ck148 = 0 time = 745
* CHECK dout1_0 vdout1_0ck149 = 0 time = 750
* CHECK dout1_1 vdout1_1ck149 = 1.0 time = 750
* CHECK dout1_2 vdout1_2ck149 = 0 time = 750
* CHECK dout1_3 vdout1_3ck149 = 1.0 time = 750
* CHECK dout1_4 vdout1_4ck149 = 0 time = 750
* CHECK dout1_5 vdout1_5ck149 = 0 time = 750
* CHECK dout1_6 vdout1_6ck149 = 0 time = 750
* CHECK dout1_7 vdout1_7ck149 = 1.0 time = 750
* CHECK dout1_8 vdout1_8ck149 = 0 time = 750
* CHECK dout1_9 vdout1_9ck149 = 1.0 time = 750
* CHECK dout1_10 vdout1_10ck149 = 0 time = 750
* CHECK dout1_11 vdout1_11ck149 = 1.0 time = 750
* CHECK dout1_12 vdout1_12ck149 = 1.0 time = 750
* CHECK dout1_13 vdout1_13ck149 = 1.0 time = 750
* CHECK dout1_14 vdout1_14ck149 = 1.0 time = 750
* CHECK dout1_15 vdout1_15ck149 = 0 time = 750
* CHECK dout1_16 vdout1_16ck149 = 1.0 time = 750
* CHECK dout1_0 vdout1_0ck154 = 0 time = 775
* CHECK dout1_1 vdout1_1ck154 = 1.0 time = 775
* CHECK dout1_2 vdout1_2ck154 = 1.0 time = 775
* CHECK dout1_3 vdout1_3ck154 = 0 time = 775
* CHECK dout1_4 vdout1_4ck154 = 0 time = 775
* CHECK dout1_5 vdout1_5ck154 = 0 time = 775
* CHECK dout1_6 vdout1_6ck154 = 1.0 time = 775
* CHECK dout1_7 vdout1_7ck154 = 1.0 time = 775
* CHECK dout1_8 vdout1_8ck154 = 0 time = 775
* CHECK dout1_9 vdout1_9ck154 = 0 time = 775
* CHECK dout1_10 vdout1_10ck154 = 0 time = 775
* CHECK dout1_11 vdout1_11ck154 = 0 time = 775
* CHECK dout1_12 vdout1_12ck154 = 1.0 time = 775
* CHECK dout1_13 vdout1_13ck154 = 0 time = 775
* CHECK dout1_14 vdout1_14ck154 = 1.0 time = 775
* CHECK dout1_15 vdout1_15ck154 = 0 time = 775
* CHECK dout1_16 vdout1_16ck154 = 1.0 time = 775
* CHECK dout1_0 vdout1_0ck156 = 0 time = 785
* CHECK dout1_1 vdout1_1ck156 = 1.0 time = 785
* CHECK dout1_2 vdout1_2ck156 = 1.0 time = 785
* CHECK dout1_3 vdout1_3ck156 = 0 time = 785
* CHECK dout1_4 vdout1_4ck156 = 0 time = 785
* CHECK dout1_5 vdout1_5ck156 = 1.0 time = 785
* CHECK dout1_6 vdout1_6ck156 = 1.0 time = 785
* CHECK dout1_7 vdout1_7ck156 = 1.0 time = 785
* CHECK dout1_8 vdout1_8ck156 = 0 time = 785
* CHECK dout1_9 vdout1_9ck156 = 1.0 time = 785
* CHECK dout1_10 vdout1_10ck156 = 0 time = 785
* CHECK dout1_11 vdout1_11ck156 = 0 time = 785
* CHECK dout1_12 vdout1_12ck156 = 1.0 time = 785
* CHECK dout1_13 vdout1_13ck156 = 0 time = 785
* CHECK dout1_14 vdout1_14ck156 = 0 time = 785
* CHECK dout1_15 vdout1_15ck156 = 1.0 time = 785
* CHECK dout1_16 vdout1_16ck156 = 0 time = 785
* CHECK dout1_0 vdout1_0ck157 = 1.0 time = 790
* CHECK dout1_1 vdout1_1ck157 = 0 time = 790
* CHECK dout1_2 vdout1_2ck157 = 1.0 time = 790
* CHECK dout1_3 vdout1_3ck157 = 0 time = 790
* CHECK dout1_4 vdout1_4ck157 = 1.0 time = 790
* CHECK dout1_5 vdout1_5ck157 = 0 time = 790
* CHECK dout1_6 vdout1_6ck157 = 1.0 time = 790
* CHECK dout1_7 vdout1_7ck157 = 1.0 time = 790
* CHECK dout1_8 vdout1_8ck157 = 1.0 time = 790
* CHECK dout1_9 vdout1_9ck157 = 0 time = 790
* CHECK dout1_10 vdout1_10ck157 = 1.0 time = 790
* CHECK dout1_11 vdout1_11ck157 = 0 time = 790
* CHECK dout1_12 vdout1_12ck157 = 1.0 time = 790
* CHECK dout1_13 vdout1_13ck157 = 0 time = 790
* CHECK dout1_14 vdout1_14ck157 = 1.0 time = 790
* CHECK dout1_15 vdout1_15ck157 = 1.0 time = 790
* CHECK dout1_16 vdout1_16ck157 = 1.0 time = 790
* CHECK dout1_0 vdout1_0ck158 = 1.0 time = 795
* CHECK dout1_1 vdout1_1ck158 = 0 time = 795
* CHECK dout1_2 vdout1_2ck158 = 1.0 time = 795
* CHECK dout1_3 vdout1_3ck158 = 1.0 time = 795
* CHECK dout1_4 vdout1_4ck158 = 0 time = 795
* CHECK dout1_5 vdout1_5ck158 = 0 time = 795
* CHECK dout1_6 vdout1_6ck158 = 0 time = 795
* CHECK dout1_7 vdout1_7ck158 = 1.0 time = 795
* CHECK dout1_8 vdout1_8ck158 = 1.0 time = 795
* CHECK dout1_9 vdout1_9ck158 = 1.0 time = 795
* CHECK dout1_10 vdout1_10ck158 = 0 time = 795
* CHECK dout1_11 vdout1_11ck158 = 1.0 time = 795
* CHECK dout1_12 vdout1_12ck158 = 1.0 time = 795
* CHECK dout1_13 vdout1_13ck158 = 0 time = 795
* CHECK dout1_14 vdout1_14ck158 = 0 time = 795
* CHECK dout1_15 vdout1_15ck158 = 0 time = 795
* CHECK dout1_16 vdout1_16ck158 = 0 time = 795
* CHECK dout1_0 vdout1_0ck159 = 1.0 time = 800
* CHECK dout1_1 vdout1_1ck159 = 0 time = 800
* CHECK dout1_2 vdout1_2ck159 = 0 time = 800
* CHECK dout1_3 vdout1_3ck159 = 0 time = 800
* CHECK dout1_4 vdout1_4ck159 = 0 time = 800
* CHECK dout1_5 vdout1_5ck159 = 1.0 time = 800
* CHECK dout1_6 vdout1_6ck159 = 1.0 time = 800
* CHECK dout1_7 vdout1_7ck159 = 1.0 time = 800
* CHECK dout1_8 vdout1_8ck159 = 1.0 time = 800
* CHECK dout1_9 vdout1_9ck159 = 0 time = 800
* CHECK dout1_10 vdout1_10ck159 = 0 time = 800
* CHECK dout1_11 vdout1_11ck159 = 0 time = 800
* CHECK dout1_12 vdout1_12ck159 = 1.0 time = 800
* CHECK dout1_13 vdout1_13ck159 = 1.0 time = 800
* CHECK dout1_14 vdout1_14ck159 = 0 time = 800
* CHECK dout1_15 vdout1_15ck159 = 0 time = 800
* CHECK dout1_16 vdout1_16ck159 = 1.0 time = 800
* CHECK dout1_0 vdout1_0ck160 = 1.0 time = 805
* CHECK dout1_1 vdout1_1ck160 = 0 time = 805
* CHECK dout1_2 vdout1_2ck160 = 1.0 time = 805
* CHECK dout1_3 vdout1_3ck160 = 0 time = 805
* CHECK dout1_4 vdout1_4ck160 = 1.0 time = 805
* CHECK dout1_5 vdout1_5ck160 = 0 time = 805
* CHECK dout1_6 vdout1_6ck160 = 1.0 time = 805
* CHECK dout1_7 vdout1_7ck160 = 1.0 time = 805
* CHECK dout1_8 vdout1_8ck160 = 1.0 time = 805
* CHECK dout1_9 vdout1_9ck160 = 0 time = 805
* CHECK dout1_10 vdout1_10ck160 = 1.0 time = 805
* CHECK dout1_11 vdout1_11ck160 = 0 time = 805
* CHECK dout1_12 vdout1_12ck160 = 1.0 time = 805
* CHECK dout1_13 vdout1_13ck160 = 0 time = 805
* CHECK dout1_14 vdout1_14ck160 = 1.0 time = 805
* CHECK dout1_15 vdout1_15ck160 = 1.0 time = 805
* CHECK dout1_16 vdout1_16ck160 = 1.0 time = 805
* CHECK dout1_0 vdout1_0ck164 = 1.0 time = 825
* CHECK dout1_1 vdout1_1ck164 = 1.0 time = 825
* CHECK dout1_2 vdout1_2ck164 = 1.0 time = 825
* CHECK dout1_3 vdout1_3ck164 = 1.0 time = 825
* CHECK dout1_4 vdout1_4ck164 = 0 time = 825
* CHECK dout1_5 vdout1_5ck164 = 1.0 time = 825
* CHECK dout1_6 vdout1_6ck164 = 1.0 time = 825
* CHECK dout1_7 vdout1_7ck164 = 0 time = 825
* CHECK dout1_8 vdout1_8ck164 = 1.0 time = 825
* CHECK dout1_9 vdout1_9ck164 = 0 time = 825
* CHECK dout1_10 vdout1_10ck164 = 0 time = 825
* CHECK dout1_11 vdout1_11ck164 = 1.0 time = 825
* CHECK dout1_12 vdout1_12ck164 = 0 time = 825
* CHECK dout1_13 vdout1_13ck164 = 1.0 time = 825
* CHECK dout1_14 vdout1_14ck164 = 1.0 time = 825
* CHECK dout1_15 vdout1_15ck164 = 1.0 time = 825
* CHECK dout1_16 vdout1_16ck164 = 0 time = 825
* CHECK dout1_0 vdout1_0ck165 = 1.0 time = 830
* CHECK dout1_1 vdout1_1ck165 = 0 time = 830
* CHECK dout1_2 vdout1_2ck165 = 1.0 time = 830
* CHECK dout1_3 vdout1_3ck165 = 0 time = 830
* CHECK dout1_4 vdout1_4ck165 = 1.0 time = 830
* CHECK dout1_5 vdout1_5ck165 = 1.0 time = 830
* CHECK dout1_6 vdout1_6ck165 = 1.0 time = 830
* CHECK dout1_7 vdout1_7ck165 = 0 time = 830
* CHECK dout1_8 vdout1_8ck165 = 0 time = 830
* CHECK dout1_9 vdout1_9ck165 = 0 time = 830
* CHECK dout1_10 vdout1_10ck165 = 1.0 time = 830
* CHECK dout1_11 vdout1_11ck165 = 0 time = 830
* CHECK dout1_12 vdout1_12ck165 = 1.0 time = 830
* CHECK dout1_13 vdout1_13ck165 = 0 time = 830
* CHECK dout1_14 vdout1_14ck165 = 1.0 time = 830
* CHECK dout1_15 vdout1_15ck165 = 1.0 time = 830
* CHECK dout1_16 vdout1_16ck165 = 1.0 time = 830
* CHECK dout1_0 vdout1_0ck166 = 1.0 time = 835
* CHECK dout1_1 vdout1_1ck166 = 0 time = 835
* CHECK dout1_2 vdout1_2ck166 = 1.0 time = 835
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
* CHECK dout1_13 vdout1_13ck166 = 0 time = 835
* CHECK dout1_14 vdout1_14ck166 = 1.0 time = 835
* CHECK dout1_15 vdout1_15ck166 = 1.0 time = 835
* CHECK dout1_16 vdout1_16ck166 = 1.0 time = 835
* CHECK dout1_0 vdout1_0ck168 = 0 time = 845
* CHECK dout1_1 vdout1_1ck168 = 1.0 time = 845
* CHECK dout1_2 vdout1_2ck168 = 0 time = 845
* CHECK dout1_3 vdout1_3ck168 = 0 time = 845
* CHECK dout1_4 vdout1_4ck168 = 1.0 time = 845
* CHECK dout1_5 vdout1_5ck168 = 0 time = 845
* CHECK dout1_6 vdout1_6ck168 = 0 time = 845
* CHECK dout1_7 vdout1_7ck168 = 0 time = 845
* CHECK dout1_8 vdout1_8ck168 = 1.0 time = 845
* CHECK dout1_9 vdout1_9ck168 = 0 time = 845
* CHECK dout1_10 vdout1_10ck168 = 0 time = 845
* CHECK dout1_11 vdout1_11ck168 = 1.0 time = 845
* CHECK dout1_12 vdout1_12ck168 = 1.0 time = 845
* CHECK dout1_13 vdout1_13ck168 = 0 time = 845
* CHECK dout1_14 vdout1_14ck168 = 1.0 time = 845
* CHECK dout1_15 vdout1_15ck168 = 0 time = 845
* CHECK dout1_16 vdout1_16ck168 = 1.0 time = 845
* CHECK dout1_0 vdout1_0ck169 = 1.0 time = 850
* CHECK dout1_1 vdout1_1ck169 = 0 time = 850
* CHECK dout1_2 vdout1_2ck169 = 0 time = 850
* CHECK dout1_3 vdout1_3ck169 = 0 time = 850
* CHECK dout1_4 vdout1_4ck169 = 1.0 time = 850
* CHECK dout1_5 vdout1_5ck169 = 0 time = 850
* CHECK dout1_6 vdout1_6ck169 = 0 time = 850
* CHECK dout1_7 vdout1_7ck169 = 1.0 time = 850
* CHECK dout1_8 vdout1_8ck169 = 1.0 time = 850
* CHECK dout1_9 vdout1_9ck169 = 0 time = 850
* CHECK dout1_10 vdout1_10ck169 = 1.0 time = 850
* CHECK dout1_11 vdout1_11ck169 = 1.0 time = 850
* CHECK dout1_12 vdout1_12ck169 = 1.0 time = 850
* CHECK dout1_13 vdout1_13ck169 = 1.0 time = 850
* CHECK dout1_14 vdout1_14ck169 = 0 time = 850
* CHECK dout1_15 vdout1_15ck169 = 0 time = 850
* CHECK dout1_16 vdout1_16ck169 = 1.0 time = 850
* CHECK dout1_0 vdout1_0ck170 = 1.0 time = 855
* CHECK dout1_1 vdout1_1ck170 = 0 time = 855
* CHECK dout1_2 vdout1_2ck170 = 0 time = 855
* CHECK dout1_3 vdout1_3ck170 = 1.0 time = 855
* CHECK dout1_4 vdout1_4ck170 = 1.0 time = 855
* CHECK dout1_5 vdout1_5ck170 = 0 time = 855
* CHECK dout1_6 vdout1_6ck170 = 1.0 time = 855
* CHECK dout1_7 vdout1_7ck170 = 1.0 time = 855
* CHECK dout1_8 vdout1_8ck170 = 1.0 time = 855
* CHECK dout1_9 vdout1_9ck170 = 1.0 time = 855
* CHECK dout1_10 vdout1_10ck170 = 1.0 time = 855
* CHECK dout1_11 vdout1_11ck170 = 1.0 time = 855
* CHECK dout1_12 vdout1_12ck170 = 0 time = 855
* CHECK dout1_13 vdout1_13ck170 = 0 time = 855
* CHECK dout1_14 vdout1_14ck170 = 1.0 time = 855
* CHECK dout1_15 vdout1_15ck170 = 0 time = 855
* CHECK dout1_16 vdout1_16ck170 = 0 time = 855
* CHECK dout1_0 vdout1_0ck171 = 1.0 time = 860
* CHECK dout1_1 vdout1_1ck171 = 0 time = 860
* CHECK dout1_2 vdout1_2ck171 = 0 time = 860
* CHECK dout1_3 vdout1_3ck171 = 0 time = 860
* CHECK dout1_4 vdout1_4ck171 = 1.0 time = 860
* CHECK dout1_5 vdout1_5ck171 = 0 time = 860
* CHECK dout1_6 vdout1_6ck171 = 0 time = 860
* CHECK dout1_7 vdout1_7ck171 = 1.0 time = 860
* CHECK dout1_8 vdout1_8ck171 = 1.0 time = 860
* CHECK dout1_9 vdout1_9ck171 = 0 time = 860
* CHECK dout1_10 vdout1_10ck171 = 1.0 time = 860
* CHECK dout1_11 vdout1_11ck171 = 1.0 time = 860
* CHECK dout1_12 vdout1_12ck171 = 1.0 time = 860
* CHECK dout1_13 vdout1_13ck171 = 1.0 time = 860
* CHECK dout1_14 vdout1_14ck171 = 0 time = 860
* CHECK dout1_15 vdout1_15ck171 = 0 time = 860
* CHECK dout1_16 vdout1_16ck171 = 1.0 time = 860
* CHECK dout1_0 vdout1_0ck172 = 0 time = 865
* CHECK dout1_1 vdout1_1ck172 = 1.0 time = 865
* CHECK dout1_2 vdout1_2ck172 = 0 time = 865
* CHECK dout1_3 vdout1_3ck172 = 0 time = 865
* CHECK dout1_4 vdout1_4ck172 = 1.0 time = 865
* CHECK dout1_5 vdout1_5ck172 = 0 time = 865
* CHECK dout1_6 vdout1_6ck172 = 0 time = 865
* CHECK dout1_7 vdout1_7ck172 = 0 time = 865
* CHECK dout1_8 vdout1_8ck172 = 1.0 time = 865
* CHECK dout1_9 vdout1_9ck172 = 0 time = 865
* CHECK dout1_10 vdout1_10ck172 = 0 time = 865
* CHECK dout1_11 vdout1_11ck172 = 1.0 time = 865
* CHECK dout1_12 vdout1_12ck172 = 1.0 time = 865
* CHECK dout1_13 vdout1_13ck172 = 0 time = 865
* CHECK dout1_14 vdout1_14ck172 = 1.0 time = 865
* CHECK dout1_15 vdout1_15ck172 = 0 time = 865
* CHECK dout1_16 vdout1_16ck172 = 1.0 time = 865
* CHECK dout1_0 vdout1_0ck173 = 1.0 time = 870
* CHECK dout1_1 vdout1_1ck173 = 0 time = 870
* CHECK dout1_2 vdout1_2ck173 = 0 time = 870
* CHECK dout1_3 vdout1_3ck173 = 1.0 time = 870
* CHECK dout1_4 vdout1_4ck173 = 1.0 time = 870
* CHECK dout1_5 vdout1_5ck173 = 0 time = 870
* CHECK dout1_6 vdout1_6ck173 = 1.0 time = 870
* CHECK dout1_7 vdout1_7ck173 = 1.0 time = 870
* CHECK dout1_8 vdout1_8ck173 = 1.0 time = 870
* CHECK dout1_9 vdout1_9ck173 = 1.0 time = 870
* CHECK dout1_10 vdout1_10ck173 = 1.0 time = 870
* CHECK dout1_11 vdout1_11ck173 = 1.0 time = 870
* CHECK dout1_12 vdout1_12ck173 = 0 time = 870
* CHECK dout1_13 vdout1_13ck173 = 0 time = 870
* CHECK dout1_14 vdout1_14ck173 = 1.0 time = 870
* CHECK dout1_15 vdout1_15ck173 = 0 time = 870
* CHECK dout1_16 vdout1_16ck173 = 0 time = 870
* CHECK dout1_0 vdout1_0ck176 = 0 time = 885
* CHECK dout1_1 vdout1_1ck176 = 0 time = 885
* CHECK dout1_2 vdout1_2ck176 = 0 time = 885
* CHECK dout1_3 vdout1_3ck176 = 1.0 time = 885
* CHECK dout1_4 vdout1_4ck176 = 0 time = 885
* CHECK dout1_5 vdout1_5ck176 = 1.0 time = 885
* CHECK dout1_6 vdout1_6ck176 = 0 time = 885
* CHECK dout1_7 vdout1_7ck176 = 1.0 time = 885
* CHECK dout1_8 vdout1_8ck176 = 1.0 time = 885
* CHECK dout1_9 vdout1_9ck176 = 1.0 time = 885
* CHECK dout1_10 vdout1_10ck176 = 0 time = 885
* CHECK dout1_11 vdout1_11ck176 = 0 time = 885
* CHECK dout1_12 vdout1_12ck176 = 0 time = 885
* CHECK dout1_13 vdout1_13ck176 = 1.0 time = 885
* CHECK dout1_14 vdout1_14ck176 = 0 time = 885
* CHECK dout1_15 vdout1_15ck176 = 0 time = 885
* CHECK dout1_16 vdout1_16ck176 = 1.0 time = 885
* CHECK dout1_0 vdout1_0ck179 = 0 time = 900
* CHECK dout1_1 vdout1_1ck179 = 0 time = 900
* CHECK dout1_2 vdout1_2ck179 = 0 time = 900
* CHECK dout1_3 vdout1_3ck179 = 1.0 time = 900
* CHECK dout1_4 vdout1_4ck179 = 0 time = 900
* CHECK dout1_5 vdout1_5ck179 = 1.0 time = 900
* CHECK dout1_6 vdout1_6ck179 = 0 time = 900
* CHECK dout1_7 vdout1_7ck179 = 1.0 time = 900
* CHECK dout1_8 vdout1_8ck179 = 1.0 time = 900
* CHECK dout1_9 vdout1_9ck179 = 1.0 time = 900
* CHECK dout1_10 vdout1_10ck179 = 0 time = 900
* CHECK dout1_11 vdout1_11ck179 = 0 time = 900
* CHECK dout1_12 vdout1_12ck179 = 0 time = 900
* CHECK dout1_13 vdout1_13ck179 = 1.0 time = 900
* CHECK dout1_14 vdout1_14ck179 = 0 time = 900
* CHECK dout1_15 vdout1_15ck179 = 0 time = 900
* CHECK dout1_16 vdout1_16ck179 = 1.0 time = 900
* CHECK dout1_0 vdout1_0ck181 = 1.0 time = 910
* CHECK dout1_1 vdout1_1ck181 = 0 time = 910
* CHECK dout1_2 vdout1_2ck181 = 1.0 time = 910
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
* CHECK dout1_13 vdout1_13ck181 = 0 time = 910
* CHECK dout1_14 vdout1_14ck181 = 1.0 time = 910
* CHECK dout1_15 vdout1_15ck181 = 1.0 time = 910
* CHECK dout1_16 vdout1_16ck181 = 1.0 time = 910
* CHECK dout1_0 vdout1_0ck182 = 1.0 time = 915
* CHECK dout1_1 vdout1_1ck182 = 0 time = 915
* CHECK dout1_2 vdout1_2ck182 = 1.0 time = 915
* CHECK dout1_3 vdout1_3ck182 = 0 time = 915
* CHECK dout1_4 vdout1_4ck182 = 1.0 time = 915
* CHECK dout1_5 vdout1_5ck182 = 0 time = 915
* CHECK dout1_6 vdout1_6ck182 = 1.0 time = 915
* CHECK dout1_7 vdout1_7ck182 = 1.0 time = 915
* CHECK dout1_8 vdout1_8ck182 = 1.0 time = 915
* CHECK dout1_9 vdout1_9ck182 = 0 time = 915
* CHECK dout1_10 vdout1_10ck182 = 1.0 time = 915
* CHECK dout1_11 vdout1_11ck182 = 0 time = 915
* CHECK dout1_12 vdout1_12ck182 = 1.0 time = 915
* CHECK dout1_13 vdout1_13ck182 = 0 time = 915
* CHECK dout1_14 vdout1_14ck182 = 1.0 time = 915
* CHECK dout1_15 vdout1_15ck182 = 1.0 time = 915
* CHECK dout1_16 vdout1_16ck182 = 1.0 time = 915
* CHECK dout1_0 vdout1_0ck189 = 0 time = 950
* CHECK dout1_1 vdout1_1ck189 = 0 time = 950
* CHECK dout1_2 vdout1_2ck189 = 1.0 time = 950
* CHECK dout1_3 vdout1_3ck189 = 0 time = 950
* CHECK dout1_4 vdout1_4ck189 = 0 time = 950
* CHECK dout1_5 vdout1_5ck189 = 0 time = 950
* CHECK dout1_6 vdout1_6ck189 = 0 time = 950
* CHECK dout1_7 vdout1_7ck189 = 1.0 time = 950
* CHECK dout1_8 vdout1_8ck189 = 0 time = 950
* CHECK dout1_9 vdout1_9ck189 = 1.0 time = 950
* CHECK dout1_10 vdout1_10ck189 = 0 time = 950
* CHECK dout1_11 vdout1_11ck189 = 0 time = 950
* CHECK dout1_12 vdout1_12ck189 = 1.0 time = 950
* CHECK dout1_13 vdout1_13ck189 = 1.0 time = 950
* CHECK dout1_14 vdout1_14ck189 = 0 time = 950
* CHECK dout1_15 vdout1_15ck189 = 1.0 time = 950
* CHECK dout1_16 vdout1_16ck189 = 0 time = 950
* CHECK dout1_0 vdout1_0ck190 = 0 time = 955
* CHECK dout1_1 vdout1_1ck190 = 0 time = 955
* CHECK dout1_2 vdout1_2ck190 = 1.0 time = 955
* CHECK dout1_3 vdout1_3ck190 = 0 time = 955
* CHECK dout1_4 vdout1_4ck190 = 0 time = 955
* CHECK dout1_5 vdout1_5ck190 = 0 time = 955
* CHECK dout1_6 vdout1_6ck190 = 0 time = 955
* CHECK dout1_7 vdout1_7ck190 = 1.0 time = 955
* CHECK dout1_8 vdout1_8ck190 = 0 time = 955
* CHECK dout1_9 vdout1_9ck190 = 1.0 time = 955
* CHECK dout1_10 vdout1_10ck190 = 0 time = 955
* CHECK dout1_11 vdout1_11ck190 = 0 time = 955
* CHECK dout1_12 vdout1_12ck190 = 1.0 time = 955
* CHECK dout1_13 vdout1_13ck190 = 1.0 time = 955
* CHECK dout1_14 vdout1_14ck190 = 0 time = 955
* CHECK dout1_15 vdout1_15ck190 = 1.0 time = 955
* CHECK dout1_16 vdout1_16ck190 = 0 time = 955
* CHECK dout1_0 vdout1_0ck193 = 0 time = 970
* CHECK dout1_1 vdout1_1ck193 = 0 time = 970
* CHECK dout1_2 vdout1_2ck193 = 0 time = 970
* CHECK dout1_3 vdout1_3ck193 = 1.0 time = 970
* CHECK dout1_4 vdout1_4ck193 = 0 time = 970
* CHECK dout1_5 vdout1_5ck193 = 1.0 time = 970
* CHECK dout1_6 vdout1_6ck193 = 0 time = 970
* CHECK dout1_7 vdout1_7ck193 = 1.0 time = 970
* CHECK dout1_8 vdout1_8ck193 = 1.0 time = 970
* CHECK dout1_9 vdout1_9ck193 = 1.0 time = 970
* CHECK dout1_10 vdout1_10ck193 = 0 time = 970
* CHECK dout1_11 vdout1_11ck193 = 0 time = 970
* CHECK dout1_12 vdout1_12ck193 = 0 time = 970
* CHECK dout1_13 vdout1_13ck193 = 1.0 time = 970
* CHECK dout1_14 vdout1_14ck193 = 0 time = 970
* CHECK dout1_15 vdout1_15ck193 = 0 time = 970
* CHECK dout1_16 vdout1_16ck193 = 1.0 time = 970
* CHECK dout1_0 vdout1_0ck195 = 0 time = 980
* CHECK dout1_1 vdout1_1ck195 = 0 time = 980
* CHECK dout1_2 vdout1_2ck195 = 0 time = 980
* CHECK dout1_3 vdout1_3ck195 = 1.0 time = 980
* CHECK dout1_4 vdout1_4ck195 = 0 time = 980
* CHECK dout1_5 vdout1_5ck195 = 1.0 time = 980
* CHECK dout1_6 vdout1_6ck195 = 0 time = 980
* CHECK dout1_7 vdout1_7ck195 = 1.0 time = 980
* CHECK dout1_8 vdout1_8ck195 = 1.0 time = 980
* CHECK dout1_9 vdout1_9ck195 = 1.0 time = 980
* CHECK dout1_10 vdout1_10ck195 = 0 time = 980
* CHECK dout1_11 vdout1_11ck195 = 0 time = 980
* CHECK dout1_12 vdout1_12ck195 = 0 time = 980
* CHECK dout1_13 vdout1_13ck195 = 1.0 time = 980
* CHECK dout1_14 vdout1_14ck195 = 0 time = 980
* CHECK dout1_15 vdout1_15ck195 = 0 time = 980
* CHECK dout1_16 vdout1_16ck195 = 1.0 time = 980
* CHECK dout1_0 vdout1_0ck198 = 1.0 time = 995
* CHECK dout1_1 vdout1_1ck198 = 0 time = 995
* CHECK dout1_2 vdout1_2ck198 = 1.0 time = 995
* CHECK dout1_3 vdout1_3ck198 = 0 time = 995
* CHECK dout1_4 vdout1_4ck198 = 1.0 time = 995
* CHECK dout1_5 vdout1_5ck198 = 0 time = 995
* CHECK dout1_6 vdout1_6ck198 = 1.0 time = 995
* CHECK dout1_7 vdout1_7ck198 = 1.0 time = 995
* CHECK dout1_8 vdout1_8ck198 = 1.0 time = 995
* CHECK dout1_9 vdout1_9ck198 = 0 time = 995
* CHECK dout1_10 vdout1_10ck198 = 1.0 time = 995
* CHECK dout1_11 vdout1_11ck198 = 0 time = 995
* CHECK dout1_12 vdout1_12ck198 = 1.0 time = 995
* CHECK dout1_13 vdout1_13ck198 = 0 time = 995
* CHECK dout1_14 vdout1_14ck198 = 1.0 time = 995
* CHECK dout1_15 vdout1_15ck198 = 1.0 time = 995
* CHECK dout1_16 vdout1_16ck198 = 1.0 time = 995
* CHECK dout1_0 vdout1_0ck199 = 1.0 time = 1000
* CHECK dout1_1 vdout1_1ck199 = 0 time = 1000
* CHECK dout1_2 vdout1_2ck199 = 1.0 time = 1000
* CHECK dout1_3 vdout1_3ck199 = 0 time = 1000
* CHECK dout1_4 vdout1_4ck199 = 1.0 time = 1000
* CHECK dout1_5 vdout1_5ck199 = 0 time = 1000
* CHECK dout1_6 vdout1_6ck199 = 1.0 time = 1000
* CHECK dout1_7 vdout1_7ck199 = 1.0 time = 1000
* CHECK dout1_8 vdout1_8ck199 = 1.0 time = 1000
* CHECK dout1_9 vdout1_9ck199 = 0 time = 1000
* CHECK dout1_10 vdout1_10ck199 = 1.0 time = 1000
* CHECK dout1_11 vdout1_11ck199 = 0 time = 1000
* CHECK dout1_12 vdout1_12ck199 = 1.0 time = 1000
* CHECK dout1_13 vdout1_13ck199 = 0 time = 1000
* CHECK dout1_14 vdout1_14ck199 = 1.0 time = 1000
* CHECK dout1_15 vdout1_15ck199 = 1.0 time = 1000
* CHECK dout1_16 vdout1_16ck199 = 1.0 time = 1000
* CHECK dout1_0 vdout1_0ck201 = 0 time = 1010
* CHECK dout1_1 vdout1_1ck201 = 1.0 time = 1010
* CHECK dout1_2 vdout1_2ck201 = 0 time = 1010
* CHECK dout1_3 vdout1_3ck201 = 0 time = 1010
* CHECK dout1_4 vdout1_4ck201 = 0 time = 1010
* CHECK dout1_5 vdout1_5ck201 = 0 time = 1010
* CHECK dout1_6 vdout1_6ck201 = 1.0 time = 1010
* CHECK dout1_7 vdout1_7ck201 = 1.0 time = 1010
* CHECK dout1_8 vdout1_8ck201 = 0 time = 1010
* CHECK dout1_9 vdout1_9ck201 = 1.0 time = 1010
* CHECK dout1_10 vdout1_10ck201 = 0 time = 1010
* CHECK dout1_11 vdout1_11ck201 = 0 time = 1010
* CHECK dout1_12 vdout1_12ck201 = 1.0 time = 1010
* CHECK dout1_13 vdout1_13ck201 = 0 time = 1010
* CHECK dout1_14 vdout1_14ck201 = 1.0 time = 1010
* CHECK dout1_15 vdout1_15ck201 = 0 time = 1010
* CHECK dout1_16 vdout1_16ck201 = 0 time = 1010
* CHECK dout1_0 vdout1_0ck202 = 1.0 time = 1015
* CHECK dout1_1 vdout1_1ck202 = 0 time = 1015
* CHECK dout1_2 vdout1_2ck202 = 0 time = 1015
* CHECK dout1_3 vdout1_3ck202 = 1.0 time = 1015
* CHECK dout1_4 vdout1_4ck202 = 0 time = 1015
* CHECK dout1_5 vdout1_5ck202 = 0 time = 1015
* CHECK dout1_6 vdout1_6ck202 = 1.0 time = 1015
* CHECK dout1_7 vdout1_7ck202 = 1.0 time = 1015
* CHECK dout1_8 vdout1_8ck202 = 1.0 time = 1015
* CHECK dout1_9 vdout1_9ck202 = 0 time = 1015
* CHECK dout1_10 vdout1_10ck202 = 1.0 time = 1015
* CHECK dout1_11 vdout1_11ck202 = 0 time = 1015
* CHECK dout1_12 vdout1_12ck202 = 1.0 time = 1015
* CHECK dout1_13 vdout1_13ck202 = 0 time = 1015
* CHECK dout1_14 vdout1_14ck202 = 1.0 time = 1015
* CHECK dout1_15 vdout1_15ck202 = 1.0 time = 1015
* CHECK dout1_16 vdout1_16ck202 = 1.0 time = 1015
* CHECK dout1_0 vdout1_0ck204 = 1.0 time = 1025
* CHECK dout1_1 vdout1_1ck204 = 0 time = 1025
* CHECK dout1_2 vdout1_2ck204 = 0 time = 1025
* CHECK dout1_3 vdout1_3ck204 = 1.0 time = 1025
* CHECK dout1_4 vdout1_4ck204 = 0 time = 1025
* CHECK dout1_5 vdout1_5ck204 = 0 time = 1025
* CHECK dout1_6 vdout1_6ck204 = 1.0 time = 1025
* CHECK dout1_7 vdout1_7ck204 = 1.0 time = 1025
* CHECK dout1_8 vdout1_8ck204 = 1.0 time = 1025
* CHECK dout1_9 vdout1_9ck204 = 0 time = 1025
* CHECK dout1_10 vdout1_10ck204 = 1.0 time = 1025
* CHECK dout1_11 vdout1_11ck204 = 0 time = 1025
* CHECK dout1_12 vdout1_12ck204 = 1.0 time = 1025
* CHECK dout1_13 vdout1_13ck204 = 0 time = 1025
* CHECK dout1_14 vdout1_14ck204 = 1.0 time = 1025
* CHECK dout1_15 vdout1_15ck204 = 1.0 time = 1025
* CHECK dout1_16 vdout1_16ck204 = 1.0 time = 1025
.include /home/padraig/Tools/OpenRAM/macro/sram_0rw1r1w_17_128_freepdk45/functional_meas.sp
* probe is used for hspice/xa, while plot is used in ngspice
*.probe V(*)
*.plot V(*)
.end

