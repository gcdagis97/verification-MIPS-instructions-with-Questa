mv Instructions/testJR.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputJR.txt
mv instr.txt Instructions/testJR.txt