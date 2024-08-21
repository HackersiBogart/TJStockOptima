class CreatePreorders < ActiveRecord::Migration[7.1]
  def change
    create_table :preorders do |t|
      t.string :color
      t.date :target_date
      t.integer :quantity

      t.timestamps
    end
  end
end
