require "pry"


#----------------------------ELEGANT WAY--------------------------


class User
	attr_accessor :username, :password
	def initialize (username, password) 
		@username = username
		@password = password
	end
end


class Loginsesion 
	attr_reader :verification_status
	def initialize (user) 
		@user = user
	end

	def check_login
		puts "Enter username"
		@entered_username = gets.chomp
		puts "Enter password"
		@entered_password = gets.chomp


		if @entered_username == @user.username && @entered_password == @user.password
			puts "Hi #{@user.username}! You have successfully logged in."
			self.verification
		else
			puts "Uncorrect credentials"
		end

	end

	def verification
		puts "Verify that you are a human by entering 5 words:"
		@entered_text = gets.chomp
			if @entered_text.split(" ").length == 5
				puts "Correct"
				@verification_status = true
			else puts "Number of words incorrect."
				@verification_status = false
			end

	end

end


session = true

while session == true

puts "--------------------LOGIN----------------------------"
puts "--------------------SIGNUP---------------------------"
puts "---------------------END-----------------------------"

puts "What do you want to do?"

user_option = gets.chomp



	if user_option.downcase == "login"
		mario = User.new("Mario", "0007")
		loginsession1 = Loginsesion.new(mario)
		loginsession1.check_login
	elsif user_option.downcase == "signup"
		puts "Select username"
		username = gets.chomp
		puts "Select password"
		password = gets.chomp
		User.new(username, password)
	else

		session = false

	end

end



#--------------------------UNELEGANT WAY--------------------------


# class User 

# 	def initialize (username, password) 
# 		@username = username
# 		@password = password
# 	end

# 	def check_login
# 		puts "Enter username"
# 		@entered_username = gets.chomp
# 		puts "Enter password"
# 		@entered_password = gets.chomp


# 		if @entered_username == @username && @entered_password == @password
# 			puts "Hi #{@username}! You have successfully logged in."
# 			self.login
# 		else
# 			puts "Uncorrect credentials"
# 			self.check_login
# 		end

# 	end

# 	def login
# 		puts "Please enter a sentence with 5 words:"
# 		@entered_text = gets.chomp
# 			if @entered_text.split(" ").length == 5
# 				puts "Correct"
# 			else puts "Number of words incorrect."
# 				self.login
# 			end

# 	end

# end




# mario = User.new("Mario", "0007")

# mario.check_login


