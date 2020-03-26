class User < ActiveRecord::Base
    has_many(:purchases)
    has_many(:shoes, through: :purchases)

end

def self.login(name)
    existing_user = User.find_by({name: name })
    if(existing_user == nil)
        existing_user = User.create
    end
    return existing_user
end

self.cart 

end



