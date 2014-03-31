json.array!(@yelps) do |yelp|
  json.extract! yelp, :id, :name, :address, :descr, :comment
  json.url yelp_url(yelp, format: :json)
end
