class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.integer :duration
      t.integer :rating
      t.string :language
      t.text :cast
      t.text :description

      t.timestamps
    end
  end
end
