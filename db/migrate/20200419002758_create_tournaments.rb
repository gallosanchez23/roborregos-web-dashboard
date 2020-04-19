class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
    	t.string 	 :name
    	t.datetime :start_date
    	t.datetime :end_date
    	t.text 		 :description
    	t.integer  :type
    	t.string 	 :country
    	t.string 	 :citi
    	t.string 	 :reference_url

      t.timestamps
    end
  end
end
