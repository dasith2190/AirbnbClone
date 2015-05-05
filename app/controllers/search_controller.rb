class SearchController < ApplicationController
  def searchresult

    @loc=params[:search]
   @search=Postc.where("zip='#{@loc}'")

    #Client.where("first_name LIKE '%#{params[:first_name]}%'")
  end
end
