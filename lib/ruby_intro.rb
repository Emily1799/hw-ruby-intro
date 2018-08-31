# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end
#puts sum [1,2]

def max_2_sum arr
  if arr.empty?
    return 0
  end  
  if arr.length == 1  
    return arr[0]
  end  
  arr.sort.reverse[0] + arr.sort.reverse[1] 
  
end

#puts max_2_sum [7,2,3,4]

def sum_to_n? arr, n
  
  if arr.empty? or arr.length == 1
    return false
  end
  
  sorted_array = arr.sort.reverse
  
  i = 0

  while i < sorted_array.length
   #find the value that will sum to n
    needed = n - sorted_array[i]
    if needed != sorted_array[i] and arr.include? needed  
      puts sorted_array[i].to_s+ "," + needed.to_s
      return true
    end
   i = i.next
  end
  false
end
puts sum_to_n?([-1, -2, 3, 4, 6, -8], 12)
#puts sum_to_n?([-1, -2, 3, 4, 5, -8], -3)
#puts sum_to_n? [1], 1
#puts sum_to_n?([], 1)
#puts sum_to_n? [1,2,3,7,9,11], 10
# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
