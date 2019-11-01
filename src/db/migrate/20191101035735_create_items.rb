class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :description 
      t.float :price
      t.string :condition
      t.string :gender
      t.integer :size
      t.timestamps
    end
  end
end
