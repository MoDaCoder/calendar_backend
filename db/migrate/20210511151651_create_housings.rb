class CreateHousings < ActiveRecord::Migration[6.1]
  def change
    create_table :housings do |t|
      t.string :address
      t.string :city
      t.integer :zip
      t.string :img

      t.timestamps
    end
  end
end
