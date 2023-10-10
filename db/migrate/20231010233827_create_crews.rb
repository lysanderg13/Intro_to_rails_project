class CreateCrews < ActiveRecord::Migration[7.0]
  def change
    create_table :crews do |t|
      t.string :name
      t.string :roman_name
      t.string :total_bounty
      t.string :number_of_members
      t.string :status

      t.timestamps
    end
  end
end
