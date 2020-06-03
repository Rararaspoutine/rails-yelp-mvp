class Review < ApplicationRecord
  belongs_to :restaurant, foreign_key: true
  validates :content, :rating, allow_blank: false, presence: true
  # 'rating' => 'required|integer|between:0,5'
end
