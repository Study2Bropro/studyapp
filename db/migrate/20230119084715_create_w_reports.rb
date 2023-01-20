class CreateWReports < ActiveRecord::Migration[6.1]
  def change
    create_table :w_reports do |t|
      t.integer :user_id
      t.string :title, null: false
      t.string :content, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
