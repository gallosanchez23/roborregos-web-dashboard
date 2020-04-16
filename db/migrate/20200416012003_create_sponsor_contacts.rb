class CreateSponsorContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsor_contacts do |t|
      t.string     :first_name
      t.string     :fathers_last_name
      t.string     :mothers_last_name
      t.string     :email
      t.string     :phone_number
      t.text       :notes
      t.references :sponsor

      t.timestamps
    end
  end
end
