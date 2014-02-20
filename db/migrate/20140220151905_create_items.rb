class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :xinghao
      t.float :danjia
      t.string :tuzhi
      t.string :danwei
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
