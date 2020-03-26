
    def go_to
        choice = $prompt.select('','Browse shoes','See virtual closet',"Checkout","Exit")
        case choice
        when 'Browse shoes'
            catalog
            list_of_shoes
        when 'See virtual closet'
            "purchases"
        when "Exit"
            start_app
        when "Checkout"
            puts "Method to pay"
        end

    end
  


    def list_of_shoes
        shoe_list = []
        Shoe.all.each do |shoe|
            shoe_list << shoe.category
        end
        choice = $prompt.select("What kind of shoes are you looking for?", shoe_list.uniq)
        case choice 
        when "Ranger Boots"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         when "Viper Boots"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         when "Leather Boots"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         when "Nike Sneakers"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         when "Addidas Sneakers"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         when "Pirma Sneakers"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         when "Converse Sneakers"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         when "Light-bolt Sneakers"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end 
         when "Victoria Heels"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         when "Shoshana Heels"
            user_input = $prompt.yes?('Do you want put this item in your cart?')
            if user_input
                  @@usercart << "Ranger Boots"
            else
                 list_of_shoes
            end
         end
    end
    
    def catalog
        Shoe.all.map do |shoe|
           p shoe
        end
    end






 

