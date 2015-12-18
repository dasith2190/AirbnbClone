class Postc < ActiveRecord::Base
  has_one :picture
  has_many :rating

end
