class AddPriceForRuku < ActiveRecord::Migration
  def up
    add_column :rukus, :price, :float
  end

  def down
    remove_column :rukus, :price
  end
end
