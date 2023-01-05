class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.integer :user_id
      t.string :title, null: false
      t.string :content, null: false
      t.time :study_time
      t.boolean :status, default: false, null: false
      t.time :start_time
      t.time :end_time
      t.boolean :action, default: false, null: false
      t.timestamps
    end
  end
end
