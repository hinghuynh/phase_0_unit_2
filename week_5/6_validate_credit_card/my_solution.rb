# U2.W5: Class Warfare, Validate a Credit Card Number

# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: credit card number
# Output: validation of credit card number
# Steps: create creditCard class and intialize with argument of credit card number. create argument error
# if input length is not 16 digits. Create an instance variable of argument. Then create a method called
# check_card. Convert the number to string and split every character in an array. then convert every string 
# character back to integer.  Using a loop go through the array and multiple every second number from
# the right side by 2. Then join all the elements and convert to string and then split them up again and 
# convert part into integer. Add up all the integers in the Array, then check to see if there's a remainder
# when dividing by 10. Return boolean based on if there's a remainder or not.

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

# class CreditCard

# 	def initialize(number)
# 		raise(ArgumentError, 'credit card # is not 16 digits') unless number.to_s.length == 16
# 		@number = number
# 	end

# 	def check_card
# 		num = @number.to_s.split('')	
# 		num	= num.map { |x| x.to_i }
# 		i = 2
# 		while (@number.to_s.length - i) >= 0
# 			num[@number.to_s.length - i] *= 2
# 			i +=2
# 		end
# 		num	= num.map { |x| x.to_s }.join.split('')
# 		total = 0
# 		num.each { |x| total += (x.to_i) }
# 		return total % 10 == 0
# 	end
# end

# 4. Refactored Solution
class CreditCard
	def initialize(number)
		raise(ArgumentError, 'credit card # is not 16 digits') unless number.to_s.length == 16
		@number = number
	end

	def check_card
		num = @number.to_s.chars.map { |x| x.to_i }
		i = 2
		while (@number.to_s.length - i) >= 0
			num[@number.to_s.length - i] *= 2
			i += 2
		end
		num	= num.join.to_s.chars.map { |x| x.to_i }
		total = num.reduce(:+)
		return total % 10 == 0
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
badcard = CreditCard.new(2222222222222222)
badcard.check_card == false
goodcard = CreditCard.new(4408041234567893)
goodcard.check_card == true

# 5. Reflection 
# I think I got lucky on this assigment. When I was helping others on this assignment, it only occured
# to me after, how clever of a solution I created. What seemed quite intuitive to me other people
# struggled on. I really enjoyed doing this assigment, because I was able to use my problem solving 
# abilities to create a solution. The hardest part that people seemed to struggle with was splitting 
# the numbers that now had 2 digits after been multipled back into single digits. I just reiterated 
# was done in the beginning which was to convert back to string join and split again.  I just really
# enjoyed thinking out how to piece together the solution for thie challlenge. Writing psuedo code was
# the most tedious task.
