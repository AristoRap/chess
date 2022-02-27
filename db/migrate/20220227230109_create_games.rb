class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :state
      t.references :winner, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
