class CreateResataurants < ActiveRecord::Migration[6.0]
  def change
    create_table :resataurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :category

      t.timestamps
    end
  end
end
