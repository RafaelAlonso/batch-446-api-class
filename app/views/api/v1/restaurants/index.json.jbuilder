json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name
end


# @restaurants.map do |restaurant|
#   {
#     id: restaurant.id,
#     name: restaurant.name,
#     address: restaurant.address
#   }
# end

# [{}, {}, {}]
