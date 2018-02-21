class ReplaceColumnNumberToPhoneNumberinRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :number
    add_column :restaurants, :phone_number, :integer
  end
end
