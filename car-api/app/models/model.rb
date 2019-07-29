class Model < ApplicationRecord
  belongs_to :user
  belongs_to :make
  has_many :bmw_colors
  has_many :audi_colors
  has_many :mercedes_colors
end
