# Please type `R --vanilla < ./problem.R' to run this script

seq <- 2:999
print(sum(seq[seq %% 3 == 0 | seq %% 5 == 0]))
