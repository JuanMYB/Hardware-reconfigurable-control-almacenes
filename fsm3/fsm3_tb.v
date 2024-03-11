module fsm3_tb();

//-- Registro para generar la señal de reloj
reg clk = 0;

//-- Datos de salida del contador
reg S1=0, S2=0;
wire V, R;

//-- Instanciar la máquina de estados
fsm3 f3(
	  .clk(clk),
	  .S1(S1),
    .S2(S2),
    .V(V),
    .R(R)
  );

//-- Generador de reloj. Periodo 2 unidades
always #1 clk = ~clk;

//-- Proceso al inicio
initial begin

	//-- Fichero donde almacenar los resultados
	$dumpfile("fsm3_tb.vcd");
	$dumpvars(0, fsm3_tb);

  # 5 S1 <= 1;
  # 5 S2 <= 1;
  # 5 S1 <= 0;
  # 5 S2 <= 0;
  # 5 S2 <= 1;
  # 5 S1 <= 1;
  # 5 S2 <= 0;
  # 5 S1 <= 0;

	# 5 $display("FIN de la simulacion");
	# 5 $finish;
end

endmodule
