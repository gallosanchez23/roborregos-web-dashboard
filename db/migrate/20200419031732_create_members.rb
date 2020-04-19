class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string   :first_name
      t.string   :fathers_last_name
      t.string   :mothers_last_name
      t.string   :email
      t.integer  :major
      t.string   :avatar
      t.string   :github_username
      t.string   :github_url
      t.string   :linkedin_username
      t.string   :linkedin_url
      t.string   :resume_url
      t.integer  :status
      t.integer  :role
      t.text     :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer  :generation

      t.timestamps
    end
  end
end
