class Comment < ApplicationRecord
  include ActionView::Helpers::DateHelper
  belongs_to :post
  belongs_to :author
  validates :body, presence: true

  scope :unpublished, -> { where(status: 'unpublished') }
  scope :published, -> { where(status: 'published') }

  enum status: %i[unpublished published]

end

