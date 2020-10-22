

#Simple calculator using R
#run program step by step.

add <- function (x, y){
  return(x + y)
}
subtract <- function(x, y){
  return(x - y)
}
multiply <- function(x, y){
  return(x * y)
}
divide <- function(x, y){
  return(x / y)
}

print("Select a Number for function")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")

chc <- as.integer(readline(prompt="Enter choice (1/2/3/4):"))
num1 <- as.integer(readline(prompt="Enter First Number:"))
num2 <- as.integer(readline(prompt="Enter Second Number:"))

operator <- switch(chc, "+", "-", "*", "/")
result <- switch(chc, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2))

print(paste(num1, operator, num2, "=", result))


