class CreateApiKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :api_keys do |t|
      t.string     :access_token
      t.references :service_app

      t.timestamps
    end
  end
end
