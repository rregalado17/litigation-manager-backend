class CreateLawyers < ActiveRecord::Migration[6.0]
  def change
    create_table :lawyers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :cases
      t.integer :retainer

      t.timestamps
    end
  end
end
