class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.integer :user_id
      t.string :image
      t.text :description
      t.integer :cp_number

      t.timestamps
    end
    add_index :maps, [:user_id, :created_at]
  end
end
