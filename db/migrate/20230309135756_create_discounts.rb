class CreateDiscounts < ActiveRecord::Migration[7.0]
	def change
	  create_table :discounts do |t|
	  	t.string :code, null: false
	    t.integer :lower_limit, null: false
	    t.integer :upper_limit
	    t.integer :discount, null: false, default: 0
	    
	    t.timestamps
	  end
	end
end
