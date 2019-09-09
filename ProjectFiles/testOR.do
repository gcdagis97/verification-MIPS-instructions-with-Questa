mv Instructions/testOR.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputOR.txt
mv instr.txt Instructions/testOR.txt
