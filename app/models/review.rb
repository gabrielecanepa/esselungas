class Review < ApplicationRecord
  belongs_to :supermarket

  validates :content, length: { maximum: 100 }
  validates :rating, inclusion: { in: 1..5 }
end
