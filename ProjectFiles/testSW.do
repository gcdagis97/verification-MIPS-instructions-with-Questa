mv Instructions/testSW.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputSW.txt
mv instr.txt Instructions/testSW.txt