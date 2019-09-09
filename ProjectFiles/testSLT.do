mv Instructions/testSLT.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputSLT.txt
mv instr.txt Instructions/testSLT.txt