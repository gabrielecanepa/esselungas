class Product < ApplicationRecord
  has_many :stocks
  has_many :supermarkets, through: :stocks
end
