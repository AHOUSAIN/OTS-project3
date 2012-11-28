class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.string :type
      t.integer :movie_id

      t.timestamps
    end
  end
end
