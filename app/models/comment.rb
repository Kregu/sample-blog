class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true, length: { in: 5..4000 }
end
