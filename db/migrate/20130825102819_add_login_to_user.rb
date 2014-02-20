# -*- encoding : utf-8 -*-
class AddLoginToUser < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
  end
end
