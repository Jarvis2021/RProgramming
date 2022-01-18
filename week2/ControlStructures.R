
## if condition
x <- 5

if (x>3) {
  y <- 10
} else {
  y <- 0
}

y


## For loop
for (i in 1:10) {
 print(i)
}

x <- c("a", "b", "c", "d")

# Type 1
for (i in 1:4) {
print(x[i])
}

# Type 2

for ( i in seq_along(x)) {
  print(x[i])
}

# Type 3

for (i in 1:4) print (x[i])

# Nested for loop

x <- matrix(1:6, 2,3)

for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i,j])
  }
}


## While Loop

count <- 0
while (count < 10) {
  print(count)
  count <- count + 1
}

z <- 5

while (z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if (coin == 1) {
    z <- z + 1
  } else {
    z <- z - 1
  }
}



