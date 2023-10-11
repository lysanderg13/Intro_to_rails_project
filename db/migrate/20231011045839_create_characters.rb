class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :job
      t.string :age
      t.string :size
      t.string :bounty
      t.string :status
      t.references :crew, foreign_key: true

      t.timestamps
    end
  end
end
