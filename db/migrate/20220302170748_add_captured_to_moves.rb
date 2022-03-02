class AddCapturedToMoves < ActiveRecord::Migration[6.1]
  def change
    add_column :moves, :captured, :boolean
  end
end
