Restaurant.destroy_all
Review.destroy_all

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: "french"
    )
    Review.create!(
    content: Faker::Restaurant.review,
    rating: Random.rand(0..5),
    restaurant: restaurant
    )
end
