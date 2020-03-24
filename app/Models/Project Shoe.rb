class Shoe < ActiveRecord::Base
    has_many(:shoe)
    has_many(:user,through: :shoe)

    

end