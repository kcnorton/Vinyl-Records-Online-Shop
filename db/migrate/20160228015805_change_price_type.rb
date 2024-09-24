class ChangePriceType < ActiveRecord::Migration[7.2]
  def change
    change_column :products, :price, :integer, using: 'price::integer'
  end
end
