class RemoveCapturedFromPieces < ActiveRecord::Migration[6.1]
  def change
    remove_column :pieces, :captured, :boolean
  end
end
