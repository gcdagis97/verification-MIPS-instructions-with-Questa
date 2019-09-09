mv Instructions/testJUMP.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputJUMP.txt
mv instr.txt Instructions/testJUMP.txt