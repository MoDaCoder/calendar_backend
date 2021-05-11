class CreatePendingApprovals < ActiveRecord::Migration[6.1]
  def change
    create_table :pending_approvals do |t|
      t.references :member, null: false, foreign_key: true
      t.references :housing, null: false, foreign_key: true
      t.references :reservation, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
