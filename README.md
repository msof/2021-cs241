# 2021-cs241
shared test programs for the CS241 class

### Jayanth Rajakumar (jrajakum@uci.edu)
| File| Comments |
| ----------- | --- |
| arithmetic-01.src | Assignment and built-in call statements within a single basic block. Tests copy propagation, common subexpression elimination and constant handling.|
| arithmetic-02.src | Same as above. |
| if-01.src | Single if statement where no code should be generated in the then and else blocks, instead there is a phi for the variable 'c' |
| if-02.src | Here a variable is modified similarly in the then and else blocks, so no phi should be generated. |
| if-03.src | 'c' should not have a phi for it, because by following copy propagation, it gets the same value in both branches. However 'd' is not initialized in one of the branches, so it gets phi with (0) on  the right. |
| if-04.src | Same as previous, but the then and else blocks are swapped. |
| if-05.src | A typical if statement example with a phi. |
| if-06.src | Nested if. Two phis in total. |
| if-07.src | Nested if - program to find the greatest of three numbers. No phis but useful for testing unconditional branches in then blocks. |
| while-01.src | A simple while loop with three constants and two condition block phis. | 
| while-02.src | Similar, but there is a small difference in the renaming of a value in the loop body. |
| while-03.src |  If statement inside while loop |
| while-04.src | Nested while loop |
| while-05.src | Simple while example |
| while-06.src | Similar to above, but here there is a variable being initialized inside the loop body and never used again in the follow block till the end of the program. Useful to check if we are eliminating unnecessary phis. |
| while-07.src | While loop inside the then block of an if statement. |


### André Rösti (aroesti@uci.edu)

| File | Comments |
| ---- | -------- |
| aroesti/array_aliasing.smpl | The same array item is aliased by two identifiers; a store in between must kill the common subexpression elimination for the result to be valid. |
| aroesti/array_no_aliasing_1.smpl | The same array item is aliased by two identifiers; the store in between is to a different item. An aggressive CSE may eliminate the redundant load, since it is to a different item. |
| aroesti/array_no_aliasing_2.smpl | The same array item is aliased by two identifiers; the store in between is to a completely different array. CSE may eliminate the redundant load, since we can guarantee it is to a different array. |
| aroesti/array_simple.smpl | Allocates an array, stores to it and reads a value from it. |
| aroesti/double_loop.smpl | A loop nested in a loop tests whether phi node placement is correct. |
| aroesti/min_or_max.smpl | Tests all major language features: Functions, arrays, loops, if statements. |
| aroesti/example.smpl | The example code given in the assignment. |


### Titus Trifan (mtrifan@uci.edu)

| File | Comments |
| ---- | -------- |
| mtrifan/test_phi_rename.txt |tests if the phi generated for the inner while statement contains the index of the phi propagated in the outer while. |
| mtrifan/test_uninit_var.txt | The variables b and c are uninitialized on one of the branches, useful for checking if they are initialized with 0 in the phi instructions. |
| mtrifan/test_while_if_while.txt | Test correct phi generation and renaming. Useful to check phi propagation in more than one level down. |
| mtrifan/test_while_while_while.txt | Same as above, but with 3 while statements. |
| mtrifan/test_load_inside_if.txt | The load inside the if statement should be not be generated, while the load immediately after the if should be generated, due to the store operation. |

### Semen Pyankov (spyankov@uci.edu)

| File | Comments |
| ---- | -------- |
| spyankov/array_1.txt | Array allocation, indexing via an expression, multidimensional array |
| spyankov/array_3.txt | CSE for array loads (b[2] in the last code line should use previous IR instructions and there should not be a duplicating load) |
| spyankov/if_phi_CSE.txt | CSE for an if-then-else diamond: a+b expression should not be duplicated; also useful to check phi nodes |
| spyankov/if_nested_if.txt | Nested if statements |
| spyankov/then_nested_while.txt | While loop is inside of an if-then statement |
| spyankov/else_nested_while.txt | While loop is inside of an if-else statement |
| spyankov/while_1.txt | While loop with a modified variable a inside of a loop (check phi nodes) |
| spyankov/while_2.txt | If statement inside of a while (another source file to check phi nodes) |
| spyankov/while_4.txt | While loop (yet another source file to check phi nodes) |
| spyankov/while_nested_if.txt | If statement is inside of a while loop |
| spyankov/while_nested_while.txt | While loop is inside of a while loop |

### Luis Hsu (luishsuplus@gmail.com)

| FileName | Description |
| -------- | ----------- |
| varDecl_main_var.smpl | Declare variables in main |
| varDecl_main_array.smpl | Declare arrays in main |
| statSequence_main.smpl | The StatSequence in main |
| assign_variable_main.smpl | Assign value to variable in main |
| arith_main.smpl | Simple arithmetic in main |
| if_main.smpl | Simple `if` in main |
| if_phi_same_main.smpl | `if` in main with phi function that both operands are equal|
| if_one_side_uninit_main.smpl | `if` with a variable only initialized one side, and used later |
| if_one_side_uninit_unuse.smpl | `if` with a variable only initialized one side, but unused later |
| if_with_uninit_main.smpl | `if` with an uninitilized variable |
| while_main.smpl | Simple `while` in main |