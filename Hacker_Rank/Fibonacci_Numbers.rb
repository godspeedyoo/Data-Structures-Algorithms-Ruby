###### The Fibonacci Series

# The Fibonacci series begins with 0 and 1 (which are the first and the second terms respectively). After this, every element is the sum of the preceding elements: i.e,

# Fibonacci(n) = Fibonacci(n-1) + Fibonacci(n-2)
# Given the starter code, complete the fibonacci function to return the Nth term.

# Please note, that we start counting from Fibonacci(1) = 0. This might differ from some other notations which treat Fibonacci(0) = 0.

# So overall equation is:

#              = 0 , n = 1
# Fibonacci(n) = 1 , n = 2
#                Fibonacci(n-1) + Fibonacci(n-2)  , n > 2

##### Input Format
# One integer N.

##### Output Format
# One integer which is the N-th Fibonacci number.

def fibonacci(num)

end

##### Test Case
puts fibonacci(3) == 1
puts fibonacci(7) == 8

