# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


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