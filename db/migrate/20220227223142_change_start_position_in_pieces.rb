class ChangeStartPositionInPieces < ActiveRecord::Migration[6.1]
  def change
    remove_column :pieces, :start_position, :string
  end
end
