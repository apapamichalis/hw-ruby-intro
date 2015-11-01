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
  
  
  if s.length >= 1
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
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
