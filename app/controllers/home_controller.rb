class HomeController < ApplicationController
  def home
    @search=Postc.find_by_sql "SELECT p.price, p.post_title, p.post_description, p.id, i.image_url FROM postcs p, pictures i WHERE p.id = i.post_id_fk"
  end
end