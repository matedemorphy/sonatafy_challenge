class Car < ApplicationRecord
  enum :condition, { New: 'new',Used: 'used' }

  belongs_to :dealership

  validates_presence_of :make, :model, :condition, :price
  validates_numericality_of :price
end
