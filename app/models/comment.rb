class Comment < ApplicationRecord
  include ActionView::Helpers::DateHelper
  belongs_to :post
  belongs_to :author
  validates :body, presence: true

  enum status: %i[unpublished published]

end
