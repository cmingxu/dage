# -*- encoding : utf-8 -*-
class AddMissingColumnForChuku < ActiveRecord::Migration
  def up
    add_column :chukus, :item_name, :string
    add_column :chukus, :item_xinghao, :string
    add_column :chukus, :item_id, :integer
  end

  def down
    remove_column :chukus, :item_name
    remove_column :chukus, :item_xinghao
    remove_column :chukus, :item_id
  end
end
