# -*- encoding : utf-8 -*-
class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :roles, :string
  end
end
