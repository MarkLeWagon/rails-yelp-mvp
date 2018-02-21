class ChangeColumnNumberToPhoneNumberinRestaurants < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :number, :phone_number
  end
end
