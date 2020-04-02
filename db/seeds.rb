require "open-uri"

puts "Cleaning database..."
Supermarket.destroy_all

puts "Creating supermarkets..."

response = open("https://thereportoftheweek-api.herokuapp.com/reports")
fetched_reviews = JSON.parse(response.read)

fetched_reviews.each do |review|
  review.symbolize_keys!
end

binding.pry

20.times do
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
