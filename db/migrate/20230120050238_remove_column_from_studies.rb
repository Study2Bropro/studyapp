class RemoveColumnFromStudies < ActiveRecord::Migration[6.1]
  def change
    remove_column :studies, :study, :time
    remove_column :studies, :end_time, :time
    remove_column :studies, :date, :date
  end
end
