class Color < ApplicationRecord
  has_one_attached :image_color

  validates :name_color, presence: true
  validates :code_color, presence: true
end
