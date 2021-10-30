class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :end_date 
      t.datetime :start_date

      t.timestamps
    end
  end
end
