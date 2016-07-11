class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :client_id
      t.integer :expert_id
      t.datetime :planned_for
      t.string :location
      t.integer :rating
      t.integer :price
      t.string :booking_status
      t.text :comments

      t.timestamps null: false
    end
  end
end
