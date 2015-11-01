# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|x| sum += x} unless arr.length == 0
  return sum
end

def max_2_sum arr
  result = 0
  if arr.length > 1
    arr.sort!
    arr.reverse!
    result = arr[0] + arr[1]
  elsif arr.length == 1
    result = arr[0]
  end
  result
end

def sum_to_n? arr, n
  result = false
  if arr.length >= 2
    for i in 0...(arr.length-1) do
      for j in (i+1)...arr.length do
        sum = arr[i] + arr[j]
        if n == sum 
          result = true
        end
      end
    end
  end
  return result
end

# Part 2

def hello(name)
  "Hello, " << name
end

def starts_with_consonant? s
  if s.length > 0
    s.downcase!
    if /[bcdfghjklmnpqrstvwxz]/ =~ s[0]
      result = true
    end
  else
    result = false
  end
  return result
end

def binary_multiple_of_4? s
  if s.length > 0
    if /[^01]/ =~ s
      result = false
    elsif s[s.length-1] == "0" && s[s.length-2] == "0"
      result = true
    else 
      result = false
    end 
    return result
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize (isbn, price)
    #if isbn.length > 0 && price.is_a? && price > 0
    if isbn.length > 0 && price > 0
      @isbn = isbn
      @price = price
    else
      raise ArgumentError
    end
  end

  def price_as_string
    return "\$" << sprintf('%.2f', price)
  end
end
