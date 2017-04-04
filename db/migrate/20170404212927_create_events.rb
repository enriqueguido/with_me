class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :venue
      t.string :address
      t.DATE :date
      t.TIME :time

      t.timestamps
    end
  end
end
