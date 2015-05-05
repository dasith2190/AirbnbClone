class Picture < ActiveRecord::Base
  belongs_to :postc, foreign_key  :post_id_fk
end
