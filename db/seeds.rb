# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.create(code: 'MUG', name: 'Reedsy Mug', price: 6.00)
Item.create(code: 'TSHIRT', name: 'Reedsy T-shirt', price: 15.00)
Item.create(code: 'HOODIE', name: 'Reedsy HOODIE', price: 20.00)

Discount.create(code: 'TSHIRT', lower_limit: 3, discount: 30)
Discount.create(code: 'MUG', lower_limit: 10, upper_limit: 19, discount: 2)
Discount.create(code: 'MUG', lower_limit: 20, upper_limit: 29, discount: 4)
Discount.create(code: 'MUG', lower_limit: 30, upper_limit: 39, discount: 6)
Discount.create(code: 'MUG', lower_limit: 40, upper_limit: 49, discount: 8)
Discount.create(code: 'MUG', lower_limit: 50, upper_limit: 59, discount: 10)
Discount.create(code: 'MUG', lower_limit: 60, upper_limit: 69, discount: 12)
Discount.create(code: 'MUG', lower_limit: 70, upper_limit: 79, discount: 14)
Discount.create(code: 'MUG', lower_limit: 80, upper_limit: 89, discount: 16)
Discount.create(code: 'MUG', lower_limit: 90, upper_limit: 99, discount: 18)
Discount.create(code: 'MUG', lower_limit: 100, upper_limit: 109, discount: 20)
Discount.create(code: 'MUG', lower_limit: 110, upper_limit: 119, discount: 22)
Discount.create(code: 'MUG', lower_limit: 120, upper_limit: 129, discount: 24)
Discount.create(code: 'MUG', lower_limit: 130, upper_limit: 139, discount: 26)
Discount.create(code: 'MUG', lower_limit: 140, upper_limit: 149, discount: 28)
Discount.create(code: 'MUG', lower_limit: 150, discount: 30)