class RenameCitiInTournaments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tournaments, :citi, :city
  end
end
