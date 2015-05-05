class Postc < ActiveRecord::Base
  has_many :picture
  has_one :rating

end
