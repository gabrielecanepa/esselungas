class Supermarket < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :stocks # NO dependent: :destroy!, because when I delete the superm. I want the stock not to be removed
  has_many :products, through: :stocks
end
