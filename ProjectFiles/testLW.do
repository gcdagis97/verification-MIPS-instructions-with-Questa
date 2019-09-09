mv Instructions/testLW.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputLW.txt
mv instr.txt Instructions/testLW.txt