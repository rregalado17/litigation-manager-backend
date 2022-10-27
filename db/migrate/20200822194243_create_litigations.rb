class CreateLitigations < ActiveRecord::Migration[6.0]
  def change
    create_table :litigations do |t|
      t.string :caption
      t.string :court
      t.integer :complaint_date
      t.string :legal_areas
      t.string :governing_law
      t.string :industry
      t.integer :claims
      t.integer :counterclaims
      t.string :judge
      t.string :opposing_party
      t.string :status
      t.integer :costs
      t.references :lawyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
