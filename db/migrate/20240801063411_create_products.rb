class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.integer :ProductID
      t.string :ProductCode, limit: 100
      t.string :ProductName, limit: 100
      t.string :ProductDescription, limit: 2000
      t.string :ProductCategory, limit: 100
      t.integer :ProductUnitPrice

      t.timestamps
    end
  end
end
