class AddColumnPhotoUrl < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :photo_url, :string
  end
end
