class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :tz
      t.date :start
      t.date :end
      t.string :logo

      t.timestamps
    end
  end
end
