class User < ApplicationRecord
  has_many :models
  has_many :makes, through: :models
end
