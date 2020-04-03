require "open-uri"

puts "Cleaning database..."
Supermarket.destroy_all
Product.destroy_all

puts "Creating supermarkets..."

response = open("https://thereportoftheweek-api.herokuapp.com/reports")
fetched_reviews = JSON.parse(response.read)

fetched_reviews.each do |review|
  review.symbolize_keys!
end

20.times do
  product = Product.create(
    name: Faker::Food.dish
  )
  supermarket = Supermarket.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    open: rand < 0.5,
  )

  10.times do
    fetched_review = fetched_reviews.sample

    review = Review.create(
      content: fetched_review[:videoTitle],
      rating: fetched_review[:rating],
      supermarket: supermarket
    )
  end

  puts "Created supermarket with reviews!"
end

Supermarket.all.each do |supermarket|
  rand(1..5).times do |n|
    stock = Stock.create(
      supermarket: supermarket,
      product: Product.all.sample
    )
  end
end
