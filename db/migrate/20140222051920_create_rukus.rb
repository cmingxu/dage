# -*- encoding : utf-8 -*-
class CreateRukus < ActiveRecord::Migration
  def change
    create_table :rukus do |t|
      t.integer :user_id
      t.integer :quantity
      t.string :name
      t.string :xinghao
      t.integer :item_id

      t.timestamps
    end
  end
end
