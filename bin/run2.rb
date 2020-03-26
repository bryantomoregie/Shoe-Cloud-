

    def go_to
        choice = $prompt.select('','Browse shoes','See virtual closet',"Checkout","Exit")
        case choice
        when 'Browse shoes'
            list_of_shoes
        when 'See virtual closet'
            "cart"
        when "Exit"
            puts "Method 3"
        when "Checkout"
            puts "Method to pay"
        end

    end
  


    def list_of_shoes
        shoe_list = []
        Shoe.all.each do |shoe|
            shoe_list << shoe.attributes
        end
        puts shoe_list
    end

    def promp_shoes
        choice = $prompt.select('Choose your shoes',"Ranger Boots","Viper Boots","Leather Boots","Nike Sneakers","Addidas Sneakers","Pirma Sneakers","Converse Sneakers","Light-bolt Sneakers","Victoria Heels","Shoshana Heels")
        case choice
        when "Ranger Boots"
           user_input = $prompt.yes?('Do you want put this item in your cart?')
           puts user_input
           if user_input
                 @@usercart << "Ranger Boots"
           else
                promp_shoes
           end
        when "Viper Boots"
            p 2
        when "Leather Boots"
            p 3
        when "Nike Sneakers"
            p 4 
        when "Addidas Sneakers"
            p 5 
        when "Pirma Sneakers"
            p 6 
        when "Converse Sneakers"
            p 7 
        when "Light-bolt Sneakers"
            p 8 
        when "Victoria Heels"
            p 9 
        when "Shoshana Heels"
            p 10
        end


    end


    def start_app
        puts "Welcome to Shoe-Cloud! Your personal online closet!"
        user_input = $prompt.yes?('Are you a new user')
        puts user_input
        if user_input 
            new_user
        else
            puts "isok"
        end
    end

    def start_app
        puts "Welcome to Shoe-Cloud! Your personal online closet!"
        user_input = $prompt.yes?('Are you a new user')
        puts user_input
        if user_input 
            new_user
        else
            puts "isok"
        end
    end





# first_purchase = current_customer.add_purchase(shoe, amount)
# @@total_purchase += first_purchase.total

# puts "Your shoe has been added to you cart!"

# def query_customer(currently_shopping_customer)
#     shoe = ask_customer_for_shoe
#     amount = 0
#     while amount == 0
#         amount = @prompt.ask('How many would you like to purchase? Must be an integer!').to_i
#     end
#     # amount = (@prompt.ask('How many would you like to purchase? Must be an integer!')).to_i
#     purchase = currently_shopping_customer.add_purchase(shoe, amount)
#     @@total_purchase += purchase.total
#     puts "Your shoe has been added to you cart!"
#     purchase_another?
# end

# def get_current_customer
#     Customer.find(@@customer_id)
# end


# def new_purchase(shoe, amount)
#     existing_purchase = Purchase.find_by(shoe_id: shoe.id, user_id: self.id)
#     if existing_purchase == nil
#         return purchase = Purchase.create(customer_id: self.id, shoe_id: shoe.id, amounttity: amount)
#     else
#         existing_purchase.amounttity = existing_purchase.amounttity + amount
#         existing_purchase.save
#         return existing_purchase
#     end
# end





#   def self.draw_main_menu
#     # Uses tty-prompt to have the user make a selection
#     choice = @@prompt.select('', 'New Game', 'Load Game', 'Exit')

#     case choice
#     when "New Game"
#       Main.new_game
#     when "Load Game"
#       Main.load_game
#     when "Exit"
#       pid = fork{ exec 'killall', "afplay" }
#       Main.exit_game
#     end 







# # What would you like to do?
# # Browse shoes
# # Walk into virtual closet
# Shoes
# Boots
# Sneakers
# Heels 
# Boots 
# Black 
# $29.99
# Doc Martin
# Boot #2
# Red
# $49.99
# Boot #3
# Green 
# $35.00
# How many of each shoe do you want?
# Add to cart.
# Would you like to continue shopping?
# # If they says ‘yes’ they go back to the ‘browse shoes’ page
# #If they say ‘no’ we give them their total
# Your total is going to be $100. 
# Continue to make purchase 
# Please enter credit card number 
# Please enter expiration date
# Please enter security code on the back
# Please enter shipping address 
# Click make payment when done
# Thank you for your purchase!
# What would you like to do?
# Browse shoes
# Walk into virtual closet