class ChangeDatatypeStartTimeOfStudies < ActiveRecord::Migration[6.1]
  def change
    change_column :studies, :start_time, :datetime
  end
end
