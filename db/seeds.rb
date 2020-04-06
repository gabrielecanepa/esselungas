puts "Cleaning database..."
# First the stocks (the join table), order is important here!
Stock.destroy_all
Supermarket.destroy_all
Product.destroy_all

puts "Creating fake supermarkets and products..."

# Create 20 products
20.times do
  product = Product.create(
    name: Faker::Food.dish
  )
  puts "🧻 Created product #{product.name}"
end

# Create 10 supermarkets
10.times do
  supermarket = Supermarket.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    open: rand < 0.5,
  )

  # and generate a random amount of reviews (5 to 10) for this supermarket
  reviews_number = rand(5..10)

  reviews_number.times do
    Review.create(
      content: Faker::Restaurant.review,
      rating: rand(1..5),
      supermarket: supermarket
    )
  end

  puts "🏢 Created supermarket #{supermarket.name} with #{reviews_number} reviews"
end

# For each supermarket
Supermarket.all.each do |supermarket|
  # generate a random amount of stocks (1 to 5) of a random product
  rand(1..5).times do |n| # `n` can be used, look at the message!
    stock = Stock.create(
      supermarket: supermarket,
      product: Product.all.sample
    )

    puts "📦 Created stock #{n + 1} for supermarket #{supermarket.name}"
  end
end

puts "Done!"
