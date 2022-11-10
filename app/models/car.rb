class Car < ApplicationRecord
  enum :condition, { new_condition: 'new', used_condition: 'used' }

  belongs_to :dealership

  validates_presence_of :make, :model, :condition, :price
  validates_numericality_of :price
end
