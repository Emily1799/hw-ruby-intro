# When done, submit this entire file to the autograder.

# Part 1 - completed in class with Aditya Tilyalkar, later modified by me alone to improve code
def sum arr
  #this is slightly too easy...
  arr.sum
end

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

def hello name
  "Hello, " + name
end

def starts_with_consonant? s
  #deal with empty string
  if s.empty? 
    return false
  end  
  #the first character is not a vowel or a non letter
  if /^[aeiou\W]/i.match(s)
    return false
  end
  true
end


def binary_multiple_of_4? vals
  s = val.to_s
  if s.empty?
    return false
    
  end
  #if it's not a valid binary number
  if not /\b[01]+\b/.match s 
    return false
  end
  if s.chars.last(2).join == "00" or s=="0"
    return true
  else
    false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
    
  end
  
  def price_as_string
    val = sprintf "$%.2f", @price.to_f
  end
  
 #getters
  def isbn
    @isbn
  end
  def price
    @price
  end
  
  #setters
  def isbn=(val)
    @isbn = val
  end
  
  def price=(float)
    @price=float
  end
end
