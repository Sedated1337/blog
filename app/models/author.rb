class Author < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
