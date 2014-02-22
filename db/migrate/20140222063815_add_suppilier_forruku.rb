# -*- encoding : utf-8 -*-
class AddSuppilierForruku < ActiveRecord::Migration
  def up
    add_column :rukus, :supplier, :string
  end

  def down
    remove_column :rukus, :supplier
  end
end
