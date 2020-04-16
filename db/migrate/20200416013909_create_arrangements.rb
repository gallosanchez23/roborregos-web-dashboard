class CreateArrangements < ActiveRecord::Migration[5.2]
  def change
    create_table :arrangements do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer  :amount
      t.integer  :sponsorship_type
      t.references :sponsor

      t.timestamps
    end
  end
end
