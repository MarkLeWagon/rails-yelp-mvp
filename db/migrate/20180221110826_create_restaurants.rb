class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.integer :number
      t.text :category

      t.timestamps
    end
  end
end
