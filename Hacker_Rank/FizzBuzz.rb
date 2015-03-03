# Write a program that prints (to STDOUT) the numbers from 1 to N.
# But for multiples of three print "Fizz" instead of the number
# And for the multiples of five print "Buzz".
# For numbers which are multiples of both three and five print "FizzBuzz".

# Time Complexity: O(n)
# Space Complexity: O(n)

def FizzBuzz(num)
    (1..num).each do |i|
        if i%15==0
            puts "FizzBuzz"
        elsif i%5==0
            puts "Buzz"
        elsif i%3==0
            puts "Fizz"
        else
            puts i
        end
    end
end

FizzBuzz(100)
