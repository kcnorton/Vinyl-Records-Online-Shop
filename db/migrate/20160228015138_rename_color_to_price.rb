class RenameColorToPrice < ActiveRecord::Migration
  def change
  	rename_column :products, :colour, :price
  end
end
