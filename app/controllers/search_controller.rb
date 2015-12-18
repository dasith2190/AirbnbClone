class SearchController < ApplicationController
  helper_method :get_pics

  def get_pics(img)
    @image=Picture.where("post_id_fk='#{@img}'")
    @url=@image.first
  end


  def searchresult
    @loc=params[:search]
 @search=Postc.find_by_sql "SELECT DISTINCT p.price, p.post_title, p.post_description, p.id, i.image_url FROM postcs p, pictures i WHERE p.id = i.post_id_fk AND (zip='#{@loc}' OR LOWER(city)=LOWER('#{@loc}'))"

   #@search=Postc.where("zip='#{@loc}'")

    #Client.where("first_name LIKE '%#{params[:first_name]}%'")
  end
end
