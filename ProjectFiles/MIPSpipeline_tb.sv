`timescale 1ns/1ns
module test;
	reg clk, reset;
	int note, cycleNum = 0;     //output file name, and cycle counter.
	MIPSpipeline DUT(.clk(clk), .reset(reset));

	initial begin
	   clk = 0;
	   reset = 1;
	   #25
	   reset = 0;
	end

	initial begin
	   note = $fopen("output.txt"); //calls our .txt file note, to be accessed later
	end

	//INITIALIZE CLOCK	
	always begin
	   #5 
	   clk = ~clk;
	end
		
	always begin 
	   #500
	   $fclose(note);  //closes our output file after 500ns.
	end

	always @(posedge clk) 
	begin
	$fwrite(note, "-----------------------------------------------------------|\n");	  
	$fwrite(note, "Cycle:       %d                                   |\n", cycleNum);  
	$fwrite(note, "----------------PROGRAM COUNTER----------------------------|\n");
	$fwrite(note, "Current PC:          %3d                                   |\n", DUT.PC);
	$fwrite(note, "Next PC:             %3d                                   |\n",DUT.PCin);
	#4
	$fwrite(note, "----------------INSTRUCTION--------------------------------|\n");
	$fwrite(note, "Instruction:           %32b    |\n", DUT.Instruction);
	$fwrite(note, "----------------REGISTERS----------------------------------|\n");
	$fwrite(note, "---------------|BINARY--------------------------|DECIMAL---|\n");
	$fwrite(note, "R12:           |%b|%d|\n", DUT.Register_File.RegArray[12],DUT.Register_File.RegArray[12]);
	$fwrite(note, "R13:           |%b|%d|\n", DUT.Register_File.RegArray[13],DUT.Register_File.RegArray[13]);
	$fwrite(note, "R14:           |%b|%d|\n", DUT.Register_File.RegArray[14],DUT.Register_File.RegArray[14]);
	$fwrite(note, "R15:           |%b|%d|\n", DUT.Register_File.RegArray[15],DUT.Register_File.RegArray[15]);
	$fwrite(note, "-----------------------ALU---------------------------------|\n");
	$fwrite(note, "EX ALU Result:         %32b    |\n", DUT.EX_ALUResult);
	$fwrite(note, "WB ALU Result:         %32b    |\n", DUT.WB_ALUResult);
	$fwrite(note, "----------------BRANCH/JUMPS-------------------------------|\n");
	$fwrite(note, "Branch:                %b                                   |\n", DUT.Branch);
	$fwrite(note, "Jump:                  %b                                   |\n", DUT.Jump);
	$fwrite(note, "----------------FLAGS--------------------------------------|\n");
	$fwrite(note, "Zero Flag:             %b                                   |\n", DUT.ZeroFlag);
	$fwrite(note, "Overflow Flag:         %b                                   |\n", DUT.OverflowFlag);
	$fwrite(note, "Carry Flag:            %b                                   |\n", DUT.CarryFlag);
	$fwrite(note, "Negative Flag:         %b                                   |\n", DUT.NegativeFlag);
	$fwrite(note, "not Zero Flag:         %b                                   |\n", DUT.notZeroFlag);
	$fwrite(note, "~ ~ ~ ~ ~ ~ ~ ~ END OF CYCLE :) ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~|\n");	
	$fwrite(note, "___________________________________________________________|\n");
	$fwrite(note, "\n \n \n");	
	cycleNum++;
    end
endmodule