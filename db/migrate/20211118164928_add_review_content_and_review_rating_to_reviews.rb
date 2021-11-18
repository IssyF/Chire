class AddReviewContentAndReviewRatingToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :review_rating, :integer
    add_column :reviews, :review_content, :text
  end
end
