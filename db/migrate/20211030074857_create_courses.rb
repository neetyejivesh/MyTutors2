class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
