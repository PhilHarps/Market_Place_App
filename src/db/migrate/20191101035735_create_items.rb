class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :description 
      t.float :price, :decimal, precision: 8, scale: 2
      t.string :condition
      t.string :gender
      t.string :size
      t.timestamps
    end
  end
end
