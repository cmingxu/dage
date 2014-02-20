class CreateHetongs < ActiveRecord::Migration
  def change
    create_table :hetongs do |t|
      t.string :bianhao
      t.string :client_name
      t.string :client_contact
      t.string :price
      t.date :end_time
      t.text :beizhu

      t.timestamps
    end
  end
end
