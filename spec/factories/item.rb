FactoryBot.define do
	sequence (:name) { |name| "Item #{name}"}

  factory :product do
  	name
    code { 'MUG' }
    price { 6.00 }
  end
end
