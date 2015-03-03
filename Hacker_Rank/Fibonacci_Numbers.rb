###### The Fibonacci Series

# The Fibonacci series begins with 0 and 1 (which are the first and the second terms respectively). After this, every element is the sum of the preceding elements: i.e,

# Fibonacci(n) = Fibonacci(n-1) + Fibonacci(n-2)
# Given the starter code, complete the fibonacci function to return the Nth term.

# Please note, that we start counting from Fibonacci(1) = 0. This might differ from some other notations which treat Fibonacci(0) = 0.

# So overall equation is:

#              = 0 , n = 1
# Fibonacci(n) = 1 , n = 2
#                Fibonacci(n-1) + Fibonacci(n-2)  , n > 2

#Sample: 0,1,1,2,3,5,8,13,21,34,55,89,144

##### Input Format
# One integer N. (0 <= N < 40)

##### Output Format
# One integer which is the N-th Fibonacci number.

def fibonacci(nth_fib)
  ### 1) Using Recursion - Time: O(2^n) - Space: O(n)

  # if nth_fib == 1
  #   return 0
  # elsif nth_fib == 2
  #   return 1
  # elsif nth_fib > 2
  #   return fibonacci(nth_fib - 1) + fibonacci(nth_fib - 2)
  # else
  #   return "Please enter a positive number!"
  # end


  # 2) Using Iteration
  if nth_fib == 1
    return 0
  elsif nth_fib == 2
    return 1
  elsif nth_fib > 2
    first_num = 0
    second_num = 1
    i = 0

    while i < nth_fib
      fib_num = first_num + second_num
      first_num = fib_num
      second_num = first_num
      i += 1
    end
    print fib_num
  else
    return "Please enter a positive number"
  end
end

##### Test Case
puts fibonacci(2) == 1
puts fibonacci(7) == 8
puts fibonacci(10) == 34
puts fibonacci(-1) == "Please enter a positive number!"