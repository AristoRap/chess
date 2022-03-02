class Game < ApplicationRecord
  has_many :moves
  has_many :pieces, through: :moves
end
