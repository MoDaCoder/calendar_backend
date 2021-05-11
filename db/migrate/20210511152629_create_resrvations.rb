class CreateResrvations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_days
      t.references :housing_id, null: false, foreign_key: true
      t.references :member_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
