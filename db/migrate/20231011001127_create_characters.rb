class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :job
      t.string :size
      t.string :age
      t.integer :bounty
      t.string :status
      t.references :crew, null: false, foreign_key: true
      t.references :fruit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
