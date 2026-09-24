A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

dim(A)
dim(B)

invA <- tryCatch(solve(A), error = function(e) e)
detA <- tryCatch(det(A),   error = function(e) e)
invA
detA

invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)
invB
detB
