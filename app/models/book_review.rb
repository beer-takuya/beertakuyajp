class BookReview < ActiveRecord::Base
  attr_accessible :id, :review_date, :title, :url
end
