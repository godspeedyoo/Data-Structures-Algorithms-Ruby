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

input = "5\n0 0 1 2 1"

def lonelyinteger(input)
  print input
  print "1"
  found = []

  array.each do |i|
    if found[i] == nil
      found[i] = 1
    elsif found[i] == 1
      found.delete(i)
    end
  end

  puts found.first
end
