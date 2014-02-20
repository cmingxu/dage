# -*- encoding : utf-8 -*-
class AddUserNameMobileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :mobile, :string
  end
end
