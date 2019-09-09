mv Instructions/testADD.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputADD.txt
mv instr.txt Instructions/testADD.txt