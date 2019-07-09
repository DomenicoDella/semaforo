module testbench ();
  logic clk, reset;
  wire [7:0] luces, contador;

  semaforo u1 (.clock(clk), .reset(reset), .contador(contador), .luces(luces));

  initial begin
    $display("\nclk \tcontador \tsemaforo");
    $monitor("%b \t%d \t%b", clk, contador, luces);

    clk = 0;
    #1 reset = 1;
    #1 reset = 0;
  end

  always begin
    #1 clk = ~clk;
  end
  initial begin
    #150 $finish;
  end
endmodule //testbench
