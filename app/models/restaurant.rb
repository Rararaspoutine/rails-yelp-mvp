class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
