class RenameColumnSportinEventtoSportId < ActiveRecord::Migration
  def change
  	rename_column :events, :sport, :sport_id
  end
end
