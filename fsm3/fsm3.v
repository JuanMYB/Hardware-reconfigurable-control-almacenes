module fsm3(input S1, S2, clk, output V, R);

//-------------------------------------------------------------------------
//-- Bloque 1. Circuito combinacional.
//-------------------------------------------------------------------------

reg[2:0] estado_siguiente=0;

always @(S1 or S2 or estado_actual) begin

	case(estado_actual)

	   1:	case ({S2,S1})
				2:estado_siguiente=2;
				1:estado_siguiente=4;
				default:estado_siguiente=1;
				endcase

		2:	case ({S2,S1})
				3:estado_siguiente=3;
				default:estado_siguiente=2;
				endcase

		3:	case ({S2,S1})
				0:estado_siguiente=1;
				default:estado_siguiente=3;
				endcase

		4:	case ({S2,S1})
				3:estado_siguiente=5;
				default:estado_siguiente=4;
				endcase

		5:	case ({S2,S1})
				0:estado_siguiente=1;
				default:estado_siguiente=5;
				endcase

		default:estado_siguiente=1;
		endcase

end

//--------------------------------------------------------------------------
//-- Bloque 2. Circuito secuencial.
//--------------------------------------------------------------------------

reg[2:0] estado_actual=1;

always @(posedge clk)

    estado_actual <= estado_siguiente;

//-------------------------------------------------------------------------
//-- Bloque 3. Circuito combinacional.
//-------------------------------------------------------------------------

reg V=0; reg R=0;

always @(estado_actual) begin

  case(estado_actual)

    1:	{V,R}=0;
    2:	{V,R}=0;
    3:	{V,R}=1;
    4:	{V,R}=0;
    5:	{V,R}=2;

    default:{V,R}=0;
  	endcase

end

endmodule
