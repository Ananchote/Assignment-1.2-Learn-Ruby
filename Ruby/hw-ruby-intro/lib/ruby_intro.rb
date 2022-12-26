# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|x| sum += x} unless arr.length == 0
  return sum
end

def max_2_sum arr
  return sum(arr.max(2))
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
	return "Hello, #{name}"
end

def starts_with_consonant?(s)
	if(s.length==0)
		return false;
	end
	a=s.match(/^([aeiou]|\W)/i);
	return a==nil;
end
def binary_multiple_of_4?(s)
	res=s.match(/[^(10)]/)
	if(res!=nil or s.length==0)
		return false
	end
	
	s.reverse!
	base=2;
	exponente=0
	numero=0
	s.each_char do |x|
		d=x.to_i;
		numero+=(base**exponente) * d
		exponente+=1;
	end
	return numero%4==0;
	
end

# Part 3

class BookInStock
  def initialize(isbn, price)  
      if isbn.empty? || price <= 0
        raise(ArgumentError)
      end
      @isbn = isbn
      @price = price
  end
  def isbn= isbn 
    @isbn = isbn
  end
  def price= price
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def price_as_string
    "$%.2f" % self.prices
end
