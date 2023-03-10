class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
