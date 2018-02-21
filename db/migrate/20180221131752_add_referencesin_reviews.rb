class AddReferencesinReviews < ActiveRecord::Migration[5.1]
  def change
    # a restaurant has many reviews
    add_reference :reviews, :restaurant, index: true
  end
end
