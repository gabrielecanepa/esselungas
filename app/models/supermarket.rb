class Supermarket < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
