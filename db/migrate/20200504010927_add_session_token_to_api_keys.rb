class AddSessionTokenToApiKeys < ActiveRecord::Migration[5.2]
  def change
    add_column :api_keys, :session_token, :string
  end
end
