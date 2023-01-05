class AddColumnStudies < ActiveRecord::Migration[6.1]
  def change
    add_column :studies, :date, :date
  end
end
