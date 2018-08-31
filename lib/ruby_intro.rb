# When done, submit this entire file to the autograder.

# Part 1 - completed in class with Aditya Tilyalkar, later modified by me alone to improve code
def sum arr
  #this is slightly too easy...
  arr.sum
end
#puts sum [1,2]

def max_2_sum arr
  #deal with empty array or arrays of len 1
  if arr.empty?
    return 0
  end  
  if arr.length == 1  
    return arr[0]
  end  
  #reverse sort the array and return the (new) first two values, which are the largest
  reverse_sorted = arr.sort.reverse
  reverse_sorted[0] + reverse_sorted[1] 
  
end

def sum_to_n? arr, n
  #Arrays of less than size 2 can't sum to anything
  if arr.length < 2
    return false
  end
  
  arr.each do |cur_value|
   #find the value that combined with where we are in the array, will sum to n
    needed = n - cur_value
    if needed != cur_value and arr.include? needed  
      return true
    end
  end
  false
end

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
