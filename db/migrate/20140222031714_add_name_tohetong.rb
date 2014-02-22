# -*- encoding : utf-8 -*-
class AddNameTohetong < ActiveRecord::Migration
  def up
    add_column :hetongs, :name, :string
  end

  def down
    remove_column :hetongs, :name
  end
end
