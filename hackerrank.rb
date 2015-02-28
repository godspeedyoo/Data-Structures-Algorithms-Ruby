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

input = "5\n0 0 1 2 1 3 4 3 4"

def lonelyinteger(array)
  # Get the list of integers in an array
  list = array.split[1..-1]
  list.map! {|num| num.to_i }
  p list

  found = []

  list.each do |i|
    if found[i] == nil
      p found
      found[i] = i
      p found
      p "----"
    elsif found[i] == i
      p found
      found.delete_at(i)
      p found
      p "----"
    end
  end
  found.map! {|num| found.delete(num) if num.nil?}
  p found
end

lonelyinteger(input)

