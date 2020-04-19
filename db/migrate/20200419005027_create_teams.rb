class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string     :name
      t.string     :github_url
      t.references :category

      t.timestamps
    end
  end
end
