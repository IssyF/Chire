class AddChefToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :chef, null: false, foreign_key: true
  end
end
