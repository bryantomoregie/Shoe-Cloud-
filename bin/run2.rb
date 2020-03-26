
    def go_to
        choice = $prompt.select('','Browse shoes','See virtual closet',"Checkout","Exit")
        case choice
        when 'Browse shoes'
            list_of_shoes
        when 'See virtual closet'
            "purchases"
        when "Exit"
            puts "Method 3"
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

    # def prompt_shoes
    #     choice = $prompt.select('Choose your shoes',"Ranger Boots","Viper Boots","Leather Boots","Nike Sneakers","Addidas Sneakers","Pirma Sneakers","Converse Sneakers","Light-bolt Sneakers","Victoria Heels","Shoshana Heels")
    #     case choice
    #     when "Ranger Boots"
    #        user_input = $prompt.yes?('Do you want put this item in your cart?')
    #        puts user_input
    #        if user_input
    #              @@usercart << "Ranger Boots"
    #        else
    #             promp_shoes
    #        end
    #     when "Viper Boots"
    #         p 2
    #     when "Leather Boots"
    #         p 3
    #     when "Nike Sneakers"
    #         p 4 
    #     when "Addidas Sneakers"
    #         p 5 
    #     when "Pirma Sneakers"
    #         p 6 
    #     when "Converse Sneakers"
    #         p 7 
    #     when "Light-bolt Sneakers"
    #         p 8 
    #     when "Victoria Heels"
    #         p 9 
    #     when "Shoshana Heels"
    #         p 10
    #     end
    # end




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

  # $prompt.select("What kind of shoes are you looking for?", shoe_list.uniq)
            # when 'Browse shoes'
            #     list_of_shoes
            #  when 'See virtual closet'
            #     "cart"
            # when "Exit"
            #     puts "Method 3"
            # when "Checkout"
            #     puts "Method to pay"
        # end