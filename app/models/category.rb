class Category < ApplicationRecord
  validates :name, presence: true
  has_many :to_do_items
end
