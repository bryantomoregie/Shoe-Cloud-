<!-- class User < ActiveRecord::Migration[5.2]
    def change
      create_table(:user) do |t|
        t.string(:name)
        t.string(:email_address)
        t.string(:username)
        t.string(:password)
      end
    end 
end 
 
  
  class Shoe_closet < ActiveRecord::Migration[5.2]
    def change 
        create_table(:shoe_closet) do |t|
            t.string(:model)
            t.float(:price)
            t.float(:size)
            t.string(:color)
            t.string(:brand)
            t.integer(:user_id)
            t.integer(:shoe_id)
        end
    end
  end 

  class Shoe  < ActiveRecord::Migration[5.2]
    def change 
        create_table(:shoe) do |t|
            t.string(:model)
            t.float(:price)
            t.float(:size)
            t.string(:color)
            t.string(:brand)
        end
    end 
  end  -->