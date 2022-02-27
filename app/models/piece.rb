class Piece < ApplicationRecord
  validates :name, presence: true
  validates :start_position, presence: true
  validates :captured, presence: true
end
