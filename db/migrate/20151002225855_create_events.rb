class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :address
      t.date :start_date
      t.time :start_time
      t.integer :max_headcount
      t.integer :current_headcount
      t.string :description

      t.timestamps null: false
    end
  end
end
