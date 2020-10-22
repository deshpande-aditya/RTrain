
#Program to print the fibonacci series

nterms <- as.integer(readline(prompt="Enter how many terms"))
nterms
# Assign first 2 terms

n1=0
n2=1
count <- 2
if (nterms <= 0 ){
  print("Please enter a positive integer")
} else {
  if (nterms == 1) {
    print("Fibonacci Sequence:")
    print(n1)
  } else {
    print("Fibonacci Sequence: ")
    print(n1)
    print(n2)
    while(count < nterms) {
      nth =n1 + n2
      print(nth)
      #update values
      n1 <- n2
      n2 <- nth
      count <- count+1
    }
  }
}

