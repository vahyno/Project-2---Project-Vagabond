class Post < ApplicationRecord
  belongs_to :user
  belongs_to :city
  validates :review_title, presence: true, length: {minimum: 1, maximum: 200}, allow_blank: false
  validates :review, presence: true, length: {minimum: 1}, allow_blank: false
end
