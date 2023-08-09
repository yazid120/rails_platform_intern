class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :label
      t.integer :price
      t.string :condtion
      t.timestamps
    end
  end
end
