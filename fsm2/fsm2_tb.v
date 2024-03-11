module fsm2_tb();

//-- Registro para generar la señal de reloj
reg clk = 0;

reg S1=0, S2=0;
wire A, C;

//-- Instanciar la máquina de estados
fsm2 f2(
	  .clk(clk),
	  .S1(S1),
    .S2(S2),
    .A(A),
    .C(C)
  );

//-- Generador de reloj. Periodo 2 unidades
always #1 clk = ~clk;

//-- Proceso al inicio
initial begin

	//-- Fichero donde almacenar los resultados
	$dumpfile("fsm2_tb.vcd");
	$dumpvars(0, fsm2_tb);

  # 5 S1 <= 1;
  # 5 S1 <= 0;
  # 5 S2 <= 1;
  # 5 S2 <= 0;

	# 5 $display("FIN de la simulacion");
	# 5 $finish;
end

endmodule
