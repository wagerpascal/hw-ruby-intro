# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.empty?
    0
  else
    arr.inject(0, :+)
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  print arr
  if arr.empty?
    sum
  elsif arr.count == 1
    sum = arr.first
  else
    print arr.sort[-1]
    print arr.sort[-2]
    sum = arr.sort[-1] + arr.sort[-2]
  end
  
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  arr.permutation(2) do |i, j|
    if i + j == n 
       return true
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s.empty? || s =~ /[^[:alpha:]]/
    return false 
  else #s =~ /^[A-Za-z0-9]+$/
    #puts s[0]
    if s[0] !~ /^(a|e|i|o|u)/i
      return true
    end
  end
  
  false
  
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s.empty? || s =~ /[^01]/
    return false
  elsif s =~ /00$/ || s == '0'
    return true
  end
  false 
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize (isbn, price)
    raise ArgumentError, 'Empty ISBN field' if isbn.empty?
    raise ArgumentError, 'Insert positive price value' if price < 0.01
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$" + sprintf("%0.2f", @price)
  end
    

end
