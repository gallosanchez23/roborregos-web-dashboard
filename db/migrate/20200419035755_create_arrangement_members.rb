class CreateArrangementMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :arrangement_members do |t|
      t.references :member
      t.references :arrangement

      t.timestamps
    end
  end
end
