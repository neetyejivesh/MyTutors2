class AddUrlToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :url_room, :string
  end
end
