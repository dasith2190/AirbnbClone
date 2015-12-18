class Rating < ActiveRecord::Base
  belongs_to :postc, foreign_key  :post_idfk
end