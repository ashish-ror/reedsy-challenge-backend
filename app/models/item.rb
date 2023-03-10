class Item < ApplicationRecord
	
  validates :code, presence: true, uniqueness: true
  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  def price
  	super.to_f
  end

end
