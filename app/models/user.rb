class User < ActiveRecord::Base
   

    has_many(:purchases)
    has_many(:shoes, through: :purchases)
    

end











