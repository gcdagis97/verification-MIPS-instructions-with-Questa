mv Instructions/testAND.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputAND.txt
mv instr.txt Instructions/testAND.txt
