class Supermarket < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :stocks
  has_many :products, through: :stocks
end
