class Game < ApplicationRecord
  has_many :moves
  has_many :pieces, through: :moves
  has_many :players
  belongs_to :player_white, class_name: 'User', foreign_key: "player_white_id"
end
