mv Instructions/testSUB.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputSUB.txt
mv instr.txt Instructions/testSUB.txt