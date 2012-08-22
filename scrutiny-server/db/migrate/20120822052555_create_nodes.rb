class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :key
      t.string :description
      t.timestamps
    end
  end
end
