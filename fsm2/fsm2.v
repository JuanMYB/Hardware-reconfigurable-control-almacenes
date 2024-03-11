module fsm2(input S1, S2, clk, output A, C);

//---------------------------------------------------------------------------
//-- Bloque 1. Circuito combinacional.
//---------------------------------------------------------------------------

reg[2:0] estado_siguiente=0;

always @(S1 or S2 or estado_actual) begin

	case(estado_actual)

	  1:	case ({S2,S1})
				0:estado_siguiente=1;
				2:estado_siguiente=2;
				1:estado_siguiente=5;
				default:estado_siguiente=1;
				endcase

		2:	case ({S2,S1})
				0:estado_siguiente=3;
				2:estado_siguiente=2;
				default:estado_siguiente=2;
			  endcase

		3:	case ({S2,S1})
				0:estado_siguiente=3;
				1:estado_siguiente=4;
				default:estado_siguiente=3;
				endcase

		4:	case ({S2,S1})
				0:estado_siguiente=1;
				1:estado_siguiente=4;
				default:estado_siguiente=4;
				endcase

		5:	case ({S2,S1})
				0:estado_siguiente=6;
				1:estado_siguiente=5;
				default:estado_siguiente=5;
				endcase

		6:	case ({S2,S1})
				0:estado_siguiente=6;
				2:estado_siguiente=7;
				default:estado_siguiente=6;
				endcase

		7:	case ({S2,S1})
				0:estado_siguiente=1;
				2:estado_siguiente=7;
				default:estado_siguiente=7;
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

//--------------------------------------------------------------------------
//-- Bloque 3. Circuito combinacional.
//--------------------------------------------------------------------------

reg A=0; reg C=0;

always @(estado_actual) begin

	case(estado_actual)

    1:	{A,C}=0;
    2:	{A,C}=2;
    3:	{A,C}=0;
    4:	{A,C}=1;
    5:	{A,C}=2;
    6:	{A,C}=0;
    7:	{A,C}=1;

    default: {A,C}=0;
    endcase

end

endmodule
