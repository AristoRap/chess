class AddStartPositionToPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :pieces, :start_position, :integer
  end
end
