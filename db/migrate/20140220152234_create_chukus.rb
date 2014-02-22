# -*- encoding : utf-8 -*-
class CreateChukus < ActiveRecord::Migration
  def change
    create_table :chukus do |t|
      t.integer :user_id
      t.string :quantity
      t.string :price
      t.integer :hetong_id

      t.timestamps
    end
  end
end
