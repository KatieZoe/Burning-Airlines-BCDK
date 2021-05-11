class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.text :flight_number
      t.text :origin
      t.text :destination
      t.text :departure_time
      t.text :arrival_time
      t.integer :airplane_id

      t.timestamps
    end
  end
end
