FactoryBot.define do
  factory :discount do
    code { "MUG" }
    lower_limit { 1 }
    upper_limit { nil }
    discount { 10 }
  end
end