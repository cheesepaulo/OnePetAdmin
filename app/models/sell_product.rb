class SellProduct < ApplicationRecord
  belongs_to :product
  belongs_to :sell

  validates_presence_of :quantity
end
