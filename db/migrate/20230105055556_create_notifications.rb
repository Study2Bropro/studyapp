class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :study_id
      t.boolean :check, default: false, null: false
      t.timestamps
    end
  end
end
