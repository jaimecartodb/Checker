class PasswordChecker
	def check_password(email, password)
	end

	def check_length(password)
		password.length < 7? false : true
	end

	def contains_letter(password)
		password.include?("/[a-zA-Z]/")
	end

	def contains_number(passowrd)
		password.include?("/\d/")
	end

	def contains_symbol(password)
		password.include?("/\W/")
	end

	def contains_name(email, passowrd)
		password.include?(email[0,email.index('@')])
	end

	def contains_domain(email, passowrd)
		password.include?(email[0,email.index('@')])
	end	