class CreateMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.references :piece, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.integer :from_position
      t.integer :to_position

      t.timestamps
    end
  end
end
