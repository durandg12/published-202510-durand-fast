#! /usr/bin/env Rscript
library(sanssouci)
library(microbenchmark)

set.seed(12)



pow <- 10
alpha <- 0.05

vec_factor <- c(1, 2, 4, 8)
record_time <- rep(0, length(vec_factor))
method <- zeta.trivial

n_repl <- 100
i <- 0

for (factor in vec_factor){
  i <- i+1
  m <- (2 ^ pow) * factor
  example <- dyadic.from.height(m, pow, 2)
  leaf_list <- example$leaf_list
  C <- example$C
  
  pval <- 1 - pnorm(rnorm(n = m))
  
  ZL <- zetas.tree(C, leaf_list, method, pval, alpha, refine = TRUE, verbose = FALSE)
  
  #pruned.no.gaps <- pruning(C, ZL, leaf_list, prune.leafs = FALSE, delete.gaps = TRUE)
  
  print(m)
  print(nb.elements(C))
  print(length(leaf_list))
  
  print("Comparing execution times:")
  mbench <- microbenchmark(V.star = V.star(1:m, C, ZL, leaf_list),
                           times = n_repl, check = "equal")
  print(mbench)
  record_time[i] <- summary(mbench, unit="milliseconds")$mean
}
