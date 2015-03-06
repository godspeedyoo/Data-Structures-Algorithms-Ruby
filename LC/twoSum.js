// Given an array of integers, find two numbers such that they add up to a specific target number.

// The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.

// You may assume that each input would have exactly one solution.

// Input: numbers={2, 7, 11, 15}, target=9
// Output: index1=1, index2=2

function twoSum(numbers, target) {
  // #1: Brute force, time: O(n^2), Space: O(1)

  for (var first = 0; first < numbers.length; first++) {
    for (var second = 0; second < numbers.length; second++ ) {
      if (numbers[first] + numbers[second] == target) {
        result = [first, second];
        console.log(numbers[first] + "+" + numbers[second] + "=" + target)
        return result;
      }
    }
  }
  return "No two sum solution"

  // #2: HashMap, time: O(n), Space: O(n)
}

// Test Case
numbers = [2,4,11,15]
target = 19
console.log(twoSum(numbers,target))

console.log("---")

numbers = [3,15,37,22]
target = 100
console.log(twoSum(numbers,target))