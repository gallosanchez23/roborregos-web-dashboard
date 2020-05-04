class CreateServiceApps < ActiveRecord::Migration[5.2]
  def change
    create_table :service_apps do |t|
      t.string  :name
      t.text    :description
      t.boolean :active
      t.integer :access_api

      t.timestamps
    end
  end
end
