json.array!(@postcs) do |postc|
  json.extract! postc, :id, :user_idfk, :, :post_title, :, :post_description, :, :address, :, :country, :, :zip, :, :city, :, :price, :home_type, :, :rooms, :, :baths, :, :price, :, :price_type, :
  json.url postc_url(postc, format: :json)
end
