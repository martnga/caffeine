# ADDS UP
# LANGUAGE: RUBY

# Given three arrays of integers your task is to create an algorithm that finds the numbers in the first two arrays whose sum is equal to any number in the third. 

# The return value should be an array of arrays, with each inner array containing the two integers from the frist two arrays plus their sum, i.e. the number in the third array.

# The sort order of the resulting array is not important. If no combination of numbers adds up return a empty array.

# Examples:

# adds_up([1,2], [4,3], [6,5,8]) # [[1, 4, 5], [2, 4, 6], [2, 3, 5]]
# adds_up([4,5], [9,1], [12,15]) # []
# adds_up([11,1], [7,3,8], [12,15,19,8]) #[[11,1,12], [11,8,19], [1,7,8]]


def adds_up(a1, a2, a3)
  #Your Code Here!
  arr = (a1 + a2).combination(2).to_a
  result = []
  i = 0
  while i < arr.length
   single = arr[i]
   sum = single[0] + single[1]
    if a3.include? sum
    result.push(single.push(sum))
    end
  i += 1
  end
  result
end

p  adds_up([4,5], [9,1], [12,15])

