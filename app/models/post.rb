class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 5..99 }
  validates :content, presence: true
  belongs_to :author
end
