class ChangePriceType < ActiveRecord::Migration[7.2]
  def change
    change_column :products, :price, 'integer USING price::integer'
  end
end
