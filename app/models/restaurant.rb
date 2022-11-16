class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # validates :phone_number, phone_number: {ten_digits: true}
  validates :name, :address, :category, presence: true
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
