class Supermarket < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :stocks # no `dependent: :destroy` here! when I delete the superm. I want the stock not to be removed
  has_many :products, through: :stocks
  has_one_attached :picture

  # Validations
  validates :name, presence: true
  validates :address, presence: true, length: { minimum: 10 }
end
