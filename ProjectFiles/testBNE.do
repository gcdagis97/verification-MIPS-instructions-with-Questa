mv Instructions/testBNE.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputBNE.txt
mv instr.txt Instructions/testBNE.txt