# Lonely Integer

# Problem Statement
# There are N integers in an array A. All but one integer occur in pairs. Your task is to find out the number that occurs only once.

# Input Format
# The first line of the input contains an integer N indicating the number of integers.
# The next line contains N space separated integers that form the array A.

# Constraints
# 1 <= N < 100
# N % 2 = 1 ( N is an odd number )
# 0 <= A[i] <= 100, ∀ i ∈ [1, N]

# Output Format
# Output S, the number that occurs only once.

# Input(stdin)
# 5
# 0 0 1 2 1

# Output(stdout)
# 2

def lonelyinteger(array)
  # Get the list of integers in an array
  # array = array.split(/\s/)[1..-1]
  # array.map! {|num| num.to_i }

  found = []
  array.each do |i|
    if found[i] == nil
      # Set found[i] to i
      found[i] = i
    elsif found[i] == i
      # Set nil if pairs exist
      found[i] = nil
    end
  end
  found.delete(nil)
  return found.first
end

# Test Case 1: Enter input from keyboard
puts "# There are N integers in an array A. All but one integer occur in pairs. Your task is to find out the number that occurs only once."
puts "Please enter the total # of integers (should be odd):"
a = gets.strip.to_i
puts "Please enter integers 1 by 1 with blankspace:"
b = gets.strip.split(" ").map! {|i| i.to_i}
puts "This is the number that is not in pair: "
print lonelyinteger(b)
puts

# Test Case 2: Given data set
input = "9\n4 9 95 93 57 4 57 93 9"
# p lonelyinteger(input) == 95

