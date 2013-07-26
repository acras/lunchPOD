json.array!(@food_pictures) do |food_picture|
  json.extract! food_picture, :day, :path
  json.url food_picture_url(food_picture, format: :json)
end
