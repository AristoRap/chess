class AddWhiteToPieces < ActiveRecord::Migration[6.1]
  def change
    add_column :pieces, :white, :boolean
  end
end
