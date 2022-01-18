class Post < ApplicationRecord
  include ActionView::Helpers::DateHelper
  has_many :comments, dependent: :delete_all
  validates :title, presence: true, length: { in: 5..99 }
  validates :content, presence: true
  belongs_to :author
  has_many :comments, dependent: :destroy
end

