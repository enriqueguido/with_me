class ChangeDataTypeToStartAndEndInEvents < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :start, :datetime
    change_column :events, :end, :datetime
  end
end
