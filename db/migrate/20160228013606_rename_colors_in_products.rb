class RenameColorsInProducts < ActiveRecord::Migration[7.2]
  def change
    rename_column :products, :color, :colour
  end
end
