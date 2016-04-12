class Car < ActiveRecord::Base
  validates :make, :model, :year, :price, presence: true
  # validates :price, numericality: { less_than: 1_000_000,
  #   greater_than: 0.00
  # }

end
