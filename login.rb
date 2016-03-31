require "pry"


#----------------------------ELEGANT WAY--------------------------



#User class. Will contain credential

class User
	attr_accessor :username, :password
	def initialize (username, password) 
		@username = username
		@password = password
	end
end


user1 = User.new("Mike", "782941")
user2 = User.new("Bob", "9741247")
user2 = User.new("Loon", "4362")
user3 = User.new("Bab", "123")
user4 = User.new("Marc", "345")
user5 = User.new("Janh", "234")
user6 = User.new("Bob", "456")

#Univers of users 

users = [user1, user2, user3, user4, user5, user6]


class Userdatabase
	attr_reader :users
	def initialize (users)
		@users = users
	end
end

usersdatabase = Userdatabase.new(users)




#Loginsession, to verify if you exist as a user and if you are a bot

class Loginsession 
	attr_reader :verification_status
	def initialize 
	end

	def check_login
		puts "Enter username"
		@entered_username = gets.chomp
		puts "Enter password"
		@entered_password = gets.chomp


		if users.username.include? @entered_username && user.password.include? @entered_password
			puts "Hi #{@entered_username}! You have successfully logged in."
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
		newloginsession = Loginsession.new
		newloginsession.check_login
	elsif user_option.downcase == "signup"
		puts "Select username"
		username = gets.chomp
		puts "Select password"
		password = gets.chomp
		users.push(User.new(username, password))
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


