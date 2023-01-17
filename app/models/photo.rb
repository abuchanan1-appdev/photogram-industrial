class Photo < ApplicationRecord
  belongs_to :owner, class_name:, "User"

  has_many :comments
  has_many :fans, through: :likes
end