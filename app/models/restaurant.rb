class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  CATEGORIES = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian' ].freeze
  validates :category, inclusion: { in: CATEGORIES }

  has_many :reviews, dependent: :destroy
end
