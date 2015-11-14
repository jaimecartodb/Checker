class PasswordChecker
require 'pry'

	def check_password(email, password)
		valor = check_length(password) && contains_minus_letter(password) && contains_upper_letter(password) && contains_number(password) && contains_symbol(password) && !contains_name(email, password) && !contains_domain(email, password)
##		binding.pry
	end

	def check_length(password)
		password.length < 7? false : true
	end

	def contains_minus_letter(password)
		password.match(/[a-z]/) == nil ? false : true
	end

	def contains_upper_letter(password)
		password.match(/[A-Z]/) == nil ? false : true
	end

	def contains_number(password)
		password.match(/\d/) == nil ? false : true
	end

	def contains_symbol(password)
		password.match(/\W/) == nil ? false : true
	end

	def contains_name(email, password)
	##	binding.pry
		password.include?(email[0,email.index('@')])
	end

	def contains_domain(email, password)
		password.include?(email[email.index('@')+1,email.index('.') - email.index('@')- 1])
	end	
end


p = PasswordChecker.new.check_password("rafa@ironhack.com", "12ll2.Ad")
puts p