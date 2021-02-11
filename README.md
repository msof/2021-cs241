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
