class AddWhiteUserToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :player_white, index: true, foreign_key: { to_table: :users }
  end
end
