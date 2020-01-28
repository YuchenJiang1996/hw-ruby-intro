# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	if arr.empty? == true
		return 0
	elsif arr.length == 0
		return 0
	else 
		return arr.sum
	end
end


def max_2_sum arr
  	if arr.empty? == true
		return 0
	elsif arr.length == 1
		return arr[0]
	else 
		arr.sort!
		return arr[arr.length - 1] + arr[arr.length - 2]
	end
end

def sum_to_n? arr, n
	if arr.empty? == true
		return false
	elsif arr.length <= 1
		return false
	else 
		arr.sort!
		for i in 0..arr.length - 2 do
			if n - arr[i] < arr[i]
				break
			end
			for j in i + 1..arr.length - 1 do
				if n - arr[i] == arr[j]
					return true
				end
			end
		end
		return false
	end
end

# Part 2

def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant? s
	if s.empty? == true
		return false
	elsif s.length == 0
		puts "Incorrect results for input: \"#{s}\""
	elsif s[0] =~ /[A-Za-z]/
		if s[0] == 'a' or s[0] == 'A'
			puts "#{s} is not a consonant"
		elsif s[0] == 'e' or s[0] == 'E'
			puts "#{s} is not a consonant"
		elsif s[0] == 'i' or s[0] == 'I'
			puts "#{s} is not a consonant"
		elsif s[0] == 'o' or s[0] == 'O'
			puts "#{s} is not a consonant"
		elsif s[0] == 'u' or s[0] == 'U'
			puts "#{s} is not a consonant" 
		else
			return "#{s} is a consonant"
		end
	end
	return false
end

def binary_multiple_of_4? s
	if s.empty? == true
		return false
	end
	if s == '0'
		return true
	end
	if s.length <= 2
		return false
	end
	for i in 0..s.length-1 do
		if s[i] != '0' and s[i] != '1'
			return false
		end
	end
	if s[s.length - 1] == '0' and s[s.length - 2] == '0' 
		return true
	end
	return false
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		if isbn.empty? == true
        	raise ArgumentError
        else
			@isbn = isbn
		end
		
		if price <= 0
        	raise ArgumentError
        else
			@price = price
		end
	end

	def isbn()
		@isbn
	end

	def price()
		@price
	end

	def isbn=(value)	
		@isbn = value
	end

	def price=(value)	
		@price = value
	end

	def price_as_string()
		return format("$%.2f", @price)
	end
end
