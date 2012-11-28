class AddTimeToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :time, :time
  end
end
