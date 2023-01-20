class CreateDReports < ActiveRecord::Migration[6.1]
  def change
    create_table :d_reports do |t|
      t.integer :user_id
      t.string :title, null: false
      t.string :content, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
