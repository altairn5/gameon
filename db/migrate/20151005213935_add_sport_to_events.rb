class AddSportToEvents < ActiveRecord::Migration
  def change
 	add_column :events, :sport, :integer
  end
end
