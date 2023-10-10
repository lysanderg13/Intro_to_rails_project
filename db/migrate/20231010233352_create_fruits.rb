class CreateFruits < ActiveRecord::Migration[7.0]
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :roman_name
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
