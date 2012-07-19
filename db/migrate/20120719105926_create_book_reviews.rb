class CreateBookReviews < ActiveRecord::Migration
  def change
    create_table :book_reviews do |t|
      t.integer :id
      t.string :title
      t.string :url
      t.date :review_date

      t.timestamps
    end
  end
end
