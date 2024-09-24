class RenameColorToPrice < ActiveRecord::Migration[7.2]
  def change
    rename_column :products, :colour, :price
  end
end
