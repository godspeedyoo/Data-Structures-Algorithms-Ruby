// Given an array of integers, find two numbers such that they add up to a specific target number.

// The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.

// You may assume that each input would have exactly one solution.

// Input: numbers={2, 7, 11, 15}, target=9
// Output: index1=1, index2=2

function twoSum(numbers, target) {
  for (var index = 0; index < numbers.length; index++) {
    var j = 0;
    while (j < numbers.length) {
      if (numbers[index] + numbers[j] == target) {
        result = [index, j];
        return result;
      }
      j++;
    }
  }
}

// Test Case
numbers = [2,2,11,15]
target = 4
console.log(numbers[twoSum(numbers,target)[0]] + numbers[twoSum(numbers,target)[1]] == target)
console.log(numbers[twoSum(numbers,target)[0]] + "+" + numbers[twoSum(numbers,target)[1]] + "=" + target)

numbers = [3,15,37,22]
target = 25
console.log(numbers[twoSum(numbers,target)[0]] + numbers[twoSum(numbers,target)[1]] == target)
console.log(numbers[twoSum(numbers,target)[0]] + "+" + numbers[twoSum(numbers,target)[1]] + "=" + target)
