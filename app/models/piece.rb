class Piece < ApplicationRecord
  validates :name, presence: true
  validates :start_position, presence: true
  validates :captured, absence: true
  validates :white, absence: true
end
