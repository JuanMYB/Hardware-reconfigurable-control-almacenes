#----------------------------------------
#-- Establecer nombre del componente
#----------------------------------------
NAME = fsm1

#-------------------------------------------------------
#-- Objetivo por defecto: hacer simulacion y sintesis
#-------------------------------------------------------
all: sim sint

#----------------------------------------------
#-- make sim
#----------------------------------------------
#-- Objetivo para hacer la simulacion del
#-- banco de pruebas
#----------------------------------------------
sim: $(NAME)_tb.vcd

#-----------------------------------------------
#-  make sint
#-----------------------------------------------
#-  Objetivo para realizar la sintetis completa
#- y dejar el diseno listo para su grabacion en
#- la FPGA
#-----------------------------------------------
sint: $(NAME).bin

#-------------------------------
#-- Compilacion y simulacion
#-------------------------------
$(NAME)_tb.vcd: $(NAME).v $(NAME)_tb.v

	#-- Compilar
	iverilog -o $(NAME)_tb.out $(NAME).v $(NAME)_tb.v

	#-- Simular
	./$(NAME)_tb.out

	#-- Ver visualmente la simulacion con gtkwave
	gtkwave $(NAME)_tb.vcd $(NAME)_tb.gtkw &

#------------------------------
#-- Sintesis completa
#------------------------------
$(NAME).bin: $(NAME).v $(NAME).pcf

	#-- Sintesis
	yosys -p "synth_ice40 -json $(NAME).json" -q $(NAME).v

	#-- Place & route
	nextpnr-ice40 --hx8k --package tq144:4k --json $(NAME).json --asc $(NAME).asc --pcf $(NAME).pcf -q

	#-- Generar binario final, listo para descargar en fgpa
	icepack $(NAME).asc $(NAME).bin


#-- Limpiar todo
clean:
	rm -f *.bin *.txt *.blif *.out *.vcd *.asc *.json
