class AddColorToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :color, :string
  end
end
