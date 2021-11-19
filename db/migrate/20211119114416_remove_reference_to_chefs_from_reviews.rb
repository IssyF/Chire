class RemoveReferenceToChefsFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_reference :reviews, :chef, foreign_key: true
  end
end
