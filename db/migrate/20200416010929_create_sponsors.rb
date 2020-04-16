class CreateSponsors < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.text   :description
      t.string :avatar
      t.string :website_url

      t.timestamps
    end
  end
end
