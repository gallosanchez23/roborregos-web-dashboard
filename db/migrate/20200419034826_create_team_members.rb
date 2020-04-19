class CreateTeamMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_members do |t|
      t.references :team
      t.references :member

      t.timestamps
    end
  end
end
