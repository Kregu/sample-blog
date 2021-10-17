class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, length: {maximum: 140}
  validates :text, presence: true, length: {in: 5..4000}

  def subject
  	title
  end

  def last_comment
  	comments.last
  end
end
