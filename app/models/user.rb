class User < ActiveRecord::Base
   

    has_many(:purchases)
    has_many(:shoes, through: :purchases)

    # def user_purchase
    #     $cart.each do |item|
    #         Purchase.create({shoe_id:item.id,user_id:self.id})
    #     end
    # end

end











