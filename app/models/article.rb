class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  
  validates :title, presence: true
  validates :text, presence: true, length: {minimum: 5}

  def subject
  	title
  end

end
