Reedsy's (fictional) Merchandising Store

To get the Rails server running locally:

Clone this repo

bundle install to install all required dependencies

rails db:create to create the database

rails db:migrate to run migrations

rails db:seed to seed the data

rails s to start the local server

Given below are the description of the API endpoints with cURL examples.


Answer 1. 

curl -X GET "http://localhost:3000/api/v1/items"

Answer 2. 

curl -X PATCH "http://localhost:3000/api/v1/items/MUG?price=66.0"

Answer 3.

curl  -X GET http://localhost:3000/api/v1/items/price -d "items=[{code: 'MUG', quantity: 1}, {code: 'TSHIRT', quantity: 1}, {code: 'HOODIE', quantity: 1}]"

curl  -X GET http://localhost:3000/api/v1/items/price -d "items=[{code: 'MUG', quantity: 2}, {code: 'TSHIRT', quantity: 1}]"

curl  -X GET http://localhost:3000/api/v1/items/price -d "items=[{code: 'MUG', quantity: 3}, {code: 'TSHIRT', quantity: 1}]"


Answer 4.

curl  -X GET http://localhost:3000/api/v1/items/price -d "items=[{code: 'MUG', quantity: 10}, {code: 'TSHIRT', quantity: 1}]"

curl  -X GET http://localhost:3000/api/v1/items/price -d "items=[{code: 'MUG', quantity: 45}, {code: 'TSHIRT', quantity: 3}]"


curl  -X GET http://localhost:3000/api/v1/items/price -d "items=[{code: 'MUG', quantity: 200}, {code: 'TSHIRT', quantity: 4}, {code: 'HOODIE', quantity: 1}]"


curl  -X GET http://localhost:3000/api/v1/items/price -d "items=[{code: 'MUG', quantity: 200}, {code: 'TSHIRT', quantity: 4}, {code: 'HOODIE', quantity: 1}]"

