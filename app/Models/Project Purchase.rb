class Purchase < ActiveRecord::Base
belongs_to(:shoe,:user)

end