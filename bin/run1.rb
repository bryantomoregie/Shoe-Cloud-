def start_app
    puts "Welcome to Shoe-Cloud! Your personal online closet!"
    user_input = $prompt.yes?('Are you a new user')
    puts user_input
    if user_input 
        new_user
    else
        third_method
    end
end

def new_user
    user_name = $prompt.ask('What is your name?', default: ENV['USER'])
    puts user_name
    user_email = $prompt.ask('What is your email?'), default: ENV['USER'])
    puts user_email
    user_username = $prompt.ask('Enter your username', default: ENV['USER'])
    puts user_username
    user_password = $prompt.mask('Enter your password', default: ENV['USER'])
    puts user_password

end



