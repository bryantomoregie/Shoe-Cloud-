    
    

def start_app
    
    puts $a.asciify("Welcome to Shoe-Cloud!")
    puts "Your personal online closet!"
    user_input = $prompt.yes?('Are you a new user')
    puts user_input
    if user_input 
        new_user
    else
        log_in
    end
end

def new_user
    user_name = $prompt.ask('What is your name?', default: ENV['USER'])
    puts user_name
    user_email = $prompt.ask('What is your email?', default: ENV['USER'])
    puts user_email
    user_username = $prompt.ask('Enter your username', default: ENV['USER'])
    puts user_name
    user_password = $prompt.mask('Enter your password', default: ENV['USER'])
     puts user_name

    $currentuser = User.create({name: user_name, email_address: user_email, username: user_username, password: user_password})
    go_to
end



    def log_in 
        username = $prompt.select('What is your username?',all_users)
        user = User.find_by({ username: username})
        if(user != nil)
            unique_password = $prompt.mask('What is your password')
            if(unique_password ==  user.password)
                $currentuser = user
                go_to
            else
                puts "Invalid password,try again"
                log_in
            end
        
        end
        
            
    end


    def all_users
     User.all.map do |user|
            p user.username
     end
    end

    def all_passwords
        User.all.map do |user|
            p user.password
        end


    end


