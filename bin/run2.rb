 $cart = []
$total_price = []


    def go_to
        choice = $prompt.select('','Browse shoes','See virtual closet',"Exit")
        case choice
        when 'Browse shoes'
            catalog
            list_of_shoes
        when 'See virtual closet'
            virtual_closet
           
             
            
        when "Exit"
            start_app
    
        end
    end
    

    def virtual_closet

        p "This is your virtual closet"
            virtual_closet = Purchase.where(user_id:$currentuser.id) 
            virtual_closet.each do |purchase|
             puts "Item name:#{purchase.shoe.category}"
            end
            user_input = $prompt.yes?('Do you want to return to the home page?')
            go_to

    end
  


    def list_of_shoes
        shoe_list = []
        Shoe.all.each do |shoe|
            shoe_list << shoe.category
        end
        selected_category = $prompt.select("What kind of shoes are you looking for?", shoe_list.uniq)
        user_input = $prompt.yes?('Do you want put this item in your cart?')
        if user_input
            $cart << Shoe.find_by(category:selected_category)
        
            puts "Your item has been added to the cart!"
            choice = $prompt.select('Do you want to continue shopping or checkout?', ["Keep shopping!", "Purchase my new shoes!"])
            case choice 
                when "Keep shopping!"
                    list_of_shoes 
                when "Purchase my new shoes!"
                    p $cart
                    print "Your total is "
                    p pay_total 
                    checkout
            end 
        else
            list_of_shoes
        end
    end
    
    def catalog
        Shoe.all.each do |shoe|
            puts "Item name: #{shoe.category}    Price: #{shoe.price}    Color: #{shoe.color}"
        end
    end

    def checkout
        choice = $prompt.select('Do you want to make any changes to cart before you purchase? ', ["Remove items from cart", "Add more items", "Purchase my new shoes!"])
        case choice 
        when "Remove items from cart"
            shoe_list = []
            $cart.each do |shoe|
                puts "Item name:#{shoe.category} Price: #{shoe.price} "
                shoe_list << shoe.category
            end
            puts "Which items would you like to remove?" 
            shoe_list = []
            $cart.each do |shoe|
                shoe_list << shoe.category
            end
            selected_category = $prompt.select("What item do you want to remove?", shoe_list)
            $cart = $cart.select do |shoe|
                shoe.category != selected_category
            end 
            p $cart 
            checkout

        when "Purchase my new shoes!"
            p "Your total is"
            p pay_total
            $cart.each do |item|
                Purchase.create({shoe_id:item.id,user_id:$currentuser.id})
                
            end
        when "Add more items"
            list_of_shoes 
         end

    end

def pay_total
    total = 0.00
    $cart.each do  |item|
        total += item.price 
    end
    total.round(2)

end
