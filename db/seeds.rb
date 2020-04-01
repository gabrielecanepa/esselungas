require "faker"

20.times do
  Supermarket.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    open: rand < 0.5,
  )
end
