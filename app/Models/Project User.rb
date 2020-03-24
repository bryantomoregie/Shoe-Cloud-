class User < ActiveRecord::Base
    has_many(:shoe)
    has_many(:purchase,through: :shoe)
    


end