mv Instructions/testADD.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputADD.txt
mv instr.txt Instructions/testADD.txt
mv Instructions/testBNE.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputBNE.txt
mv instr.txt Instructions/testBNE.txt
mv Instructions/testJR.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputJR.txt
mv instr.txt Instructions/testJR.txt
mv Instructions/testJUMP.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputJUMP.txt
mv instr.txt Instructions/testJUMP.txt
mv Instructions/testLW.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputLW.txt
mv instr.txt Instructions/testLW.txt
mv Instructions/testSLT.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputSLT.txt
mv instr.txt Instructions/testSLT.txt
mv Instructions/testSUB.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputSUB.txt
mv instr.txt Instructions/testSUB.txt
mv Instructions/testSW.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputSW.txt
mv instr.txt Instructions/testSW.txt
mv Instructions/testXORI.txt instr.txt
vsim -c test_opt
run 500ns
mv output.txt output_files/outputXORI.txt
mv instr.txt Instructions/testXORI.txt
