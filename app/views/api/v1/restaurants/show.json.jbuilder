json.extract! @restaurant, :id, :name, :address
json.extract! @restaurant.user, :email
json.comments @restaurant.comments do |comment|
  json.extract! comment, :content
  json.extract! comment.user, :email
end
