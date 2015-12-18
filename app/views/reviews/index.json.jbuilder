json.array!(@reviews) do |review|
  json.extract! review, :id, :review_id, :post_idfk, :user_idfk, :review_title, :review_desc
  json.url review_url(review, format: :json)
end
