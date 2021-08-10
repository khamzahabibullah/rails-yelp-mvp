class Restaurant < ApplicationRecord
  CATEGORY = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  # validates :category,
  has_many :reviews, dependent: :destroy
end
