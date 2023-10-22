`timescale 1ns / 1ps

module rv32m_tb( );
    parameter N = 32;                   
    reg [31:0] SEED = 2;                
    wire [N-1:0] Rd;                    
    wire Out_valid,In_error;            
    reg [N-1:0]  Rs1,Rs2;               
    reg [2:0]   Funct3;                 
    reg Clk,Rst;                        
    reg In_valid;                       
    integer i, errors;
    reg signed [63:0]  TempMul;
    reg signed [64:0]  TempMulsu;
    reg [63:0]  TempMulu;
    reg [31:0] TempRd;
    parameter Mul   = 3'b000,   
            Mulh    = 3'b001, 
            Mulhsu  = 3'b010, 
            Mulhu   = 3'b011, 
            Div     = 3'b100, 
            Divu    = 3'b101, 
            Rem     = 3'b110, 
            Remu    = 3'b111;

    initial begin : TB   // Start testing at time 0
        Clk = 0;
        forever 
        #2 Clk = ~Clk;
    end

    rv32m my_rv32m(.rd(Rd),.out_valid(Out_valid),.in_error(In_error),.clk(Clk),.rs1(Rs1),.rs2(Rs2),.funct3(Funct3),.in_valid(In_valid),.rst(~Rst)); 

    task checkrv32m;
        begin
        case (Funct3)
        Mul: begin 
            TempMul = $signed(Rs1) * $signed(Rs2);   
            if (TempMul[31:0] != Rd)
            begin     
                errors = errors + 1;
                $display("ERROR: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempMul[31:0], Rd,In_error);                 
            end else begin
                $display("\033[32;42mCORRECT\033[0m: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempMul[31:0], Rd,In_error);     
            end
        end
        Mulh: begin 
            TempMul = $signed(Rs1) * $signed(Rs2);   
            if (TempMul[63:32] != Rd) 
            begin     
                errors = errors + 1;
                $display("ERROR: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempMul[63:32], Rd,In_error); 
            end else begin
                $display("\033[32;42mCORRECT\033[0m: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempMul[63:32], Rd,In_error);
            end
        end
        Mulhsu: begin                 
            TempMulsu = $signed(Rs1) * $signed({1'b0, Rs2});   
            if (TempMulsu[63:32] != Rd)
            begin     
                errors = errors + 1;
                $display("ERROR: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%d." ,
                Funct3, Rs1, Rs2, TempMulsu[63:32], Rd,In_error);                 
            end else begin
                $display("\033[32;42mCORRECT\033[0m: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%d." ,
                Funct3, Rs1, Rs2, TempMulsu[63:32], Rd,In_error);
            end
        end
        Mulhu: begin                 
            TempMulu = Rs1 * Rs2;   
            if (TempMulu[63:32] != Rd) 
            begin     
                errors = errors + 1;
                $display("ERROR: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1d." ,
                Funct3, Rs1, Rs2, TempMulu[63:32], Rd,In_error);                 
            end else begin
                $display("\033[32;42mCORRECT\033[0m: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1d." ,
                Funct3, Rs1, Rs2, TempMulu[63:32], Rd,In_error);
            end
        end
        Div: begin 
            TempRd = $signed(Rs1) / $signed(Rs2);   
            if (TempRd != Rd) 
            begin     
                errors = errors + 1;
                $display("ERROR: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempRd, Rd,In_error);                 
            end else begin
                $display("\033[32;42mCORRECT\033[0m: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempRd, Rd,In_error);
            end
        end
        Divu: begin 
            TempRd = Rs1 / Rs2;   
            if (TempRd != Rd) 
            begin     
                errors = errors + 1;
                $display("ERROR: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempRd, Rd,In_error);                 
            end else begin
                $display("\033[32;42mCORRECT\033[0m: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempRd, Rd,In_error);
            end
        end
        Rem: begin 
            TempRd = $signed(Rs1) % $signed(Rs2);   
            if (TempRd != Rd) 
            begin     
                errors = errors + 1;
                $display("ERROR: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempRd, Rd,In_error);                 
            end else begin
                $display("\033[32;42mCORRECT\033[0m: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempRd, Rd,In_error);
            end
        end
        Remu: begin 
            TempRd = Rs1 % Rs2;   
            if (TempRd != Rd) 
            begin     
                errors = errors + 1;
                $display("ERROR: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempRd, Rd,In_error);                 
            end else begin
                $display("\033[32;42mCORRECT\033[0m: Funct3,Rs1,Rs2 = %3b,%8h,%8h, want= %8h, got=%8h,err=%1b." ,
                Funct3, Rs1, Rs2, TempRd, Rd,In_error);
            end
        end
        endcase
        end
    endtask
  
    initial begin
        errors = 0;
        Rs1 = $random(SEED);                        // Set pattern based on seed parameter
        for (i=0; i<10000; i=i+1) begin                     
            Rst = 1'b0; #2 Rst = 1'b1;               
            Rs1 = $random; Rs2= $random;             
            #2 Rst = 1'b0; #2 In_valid = 1'b1;                        
            #2 In_valid = 1'b0;
                
            Funct3 = Mul;  #150 ; checkrv32m;     
            Funct3 = Mulh;  #150 ; checkrv32m;     
            Funct3 = Mulhsu;  #150 ; checkrv32m;     
            Funct3 = Mulhu;  #150 ; checkrv32m; 
                
            Funct3 = Div;  #150 ; checkrv32m;     
            Funct3 = Divu;  #150 ; checkrv32m;
            Funct3 = Rem;  #150 ; checkrv32m;
            Funct3 = Remu;  #150 ; checkrv32m;     
        end
        $display("RV32M test done. Errors: %0d.", errors);
        $stop(1);
    end

endmodule
