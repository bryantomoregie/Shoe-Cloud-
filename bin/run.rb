require_relative '../config/environment.rb'
require_relative "./run1.rb"
require_relative "./run2.rb"
require "pry"

 $prompt = TTY::Prompt.new

ActiveRecord::Base.logger = nil




start_app




# => Do you like Ruby? (Y/n

# #####new user
# prompt.ask('Name', default: ENV['USER'])
# # => What is your name? (piotr


# user_name = prompt.ask("What's your name?")
# user = User.login(user_name)

# def sign_up_and_item_quantity
#     @prompt.ask('Hello and welcome to The Simple Store! Press ENTER to sign up and make a purchase!')
#     name = @prompt.ask('Please enter your name (first and last):') do |q|
#         q.validate(/\D\s/, 'Please include your name.')
#     end
#     email = @prompt.ask('Please enter your email address:') do |q|
#         q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address') 
#     end
#     @@customer_id = Customer.create(name: name, email_address: email).id
#     @prompt.ask("Thanks for creating an account! For a list of items sold at our Simple Store press ENTER!")


#     2.6.2.3 :filter
# To activate dynamic list searching on letter/number key presses use :filter option:
# warriors = %w(Scorpion Kano Jax Kitana Raiden)
# prompt.select('Choose your destiny?', warriors, filter: true)
# # =>
# # Choose your destiny? (Use ↑/↓ arrow keys, press Enter to select, and letter keys to filter)
# # ‣ Scorpion
# #   Kano
# #   Jax
# #   Kitana
# #   Raiden
# After the user pre



# prompt.yes?('Do you like Ruby?')
# # =>
# # Do you like Ruby? (Y/n)





#Welcome messese
# Sign up
# Log in  
# What is your name:
# What is your email:
# Create username:
# Create password:
# What would you like to do?
# Browse shoes
# Walk into virtual closet