module semaforo (input reset, clock, output reg[7:0] luces, contador);
  always @ (posedge clock or posedge reset)
  begin
    if(reset)
    begin
      contador = 8'd0;
      luces = 8'd0;
    end
    else
    begin
      contador = contador + 1;
      if (contador <= 15)
      begin
        luces = 8'b10000001;
      end
      else if ((contador > 15) && (contador<= 25))
      begin
        luces = 8'b10000010;
      end
      else if ((contador > 25) && (contador<= 40))
      begin
        luces = 8'b00100100;
      end
      else if ((contador > 40) && (contador<= 49))
      begin
        luces = 8'b01000100;
      end
      else if (contador > 49)
      begin
        contador = 8'd0;
      end

    end

  end



endmodule //semaforo
