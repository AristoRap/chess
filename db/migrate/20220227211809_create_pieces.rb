class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :start_position
      t.boolean :captured

      t.timestamps
    end
  end
end
