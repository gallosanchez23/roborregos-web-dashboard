class AddTokenToMember < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :token, :string
    add_index :members, :token, unique: true
  end
end
