mv Instructions/testXORI.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputXORI.txt
mv instr.txt Instructions/testXORI.txt