class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  has_attached_file :image, styles: { medium: "400x600>"}
end
