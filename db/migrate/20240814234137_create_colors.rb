class CreateColors < ActiveRecord::Migration[7.1]
  def change
    create_table :colors do |t|
      t.string :image_color
      t.string :name_color
      t.string :code_color

      t.timestamps
    end
  end
end
