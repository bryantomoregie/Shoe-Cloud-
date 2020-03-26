$cart = []
$total_price = []

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
        end
    end
    
    def catalog
        Shoe.all.map do |shoe|
           p shoe
        end
    end

    def checkout
        choice = $prompt.select('Do you want to make any changes to cart before you purchase? This will be your last chance to do so...', ["Remove items from cart", "Add more items", "Purchase my new shoes!"])
        case choice 
        when "Remove items from cart"
            p $cart 
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
            p pay_total
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
