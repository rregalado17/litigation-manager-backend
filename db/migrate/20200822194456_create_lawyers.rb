class CreateLawyers < ActiveRecord::Migration[6.0]
  def change
    create_table :lawyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :practice
      t.string :position
      t.string :law_school
      t.string :email
      t.integer :phone
      t.integer :cases
      t.integer :retainer
      t.string :profile

      t.timestamps
    end
  end
end
