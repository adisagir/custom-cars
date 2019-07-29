class Make < ApplicationRecord
  has_many :models
  has_many :users, through: :models
end
