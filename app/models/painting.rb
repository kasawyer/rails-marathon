class Painting < ApplicationRecord
  belongs_to :gallery

  validates :title, presence: true
  validates :year, presence: true, numericality: true, length: { is: 4}
  validates :artist, presence: true
  validates :gallery, presence: true
end
