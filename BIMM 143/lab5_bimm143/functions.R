add <- function(x, y=1) {x + y}
add(x=4)
add(x=4, y=10)
add(c(1, 2, 5, 10), y=10)
add(c(1, 2, 5, 10), 10, 20)
add(c(1, 2, 5, 10), y="string")





# Our 2nd function rescale()

rescale <- function(x) {rng <- range(x) (x - rng[1]) / (rng[1])}
