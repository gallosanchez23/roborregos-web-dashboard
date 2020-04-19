class CreateTournamentCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :tournament_categories do |t|
      t.references :category
      t.references :tournament

      t.timestamps
    end
  end
end
