class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.string     :name
      t.text       :description
      t.references :team
      t.references :category

      t.timestamps
    end
  end
end
