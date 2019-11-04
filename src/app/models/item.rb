class Item < ApplicationRecord
  belongs_to :user

  validates :description, presence: true
  validates :price, presence: true, numericality: true, numericality: {greater_than: 0}
end
