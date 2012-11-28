class RemoveTimeFromShowings < ActiveRecord::Migration
  def up
    remove_column :showings, :time
  end

  def down
    add_column :showings, :time, :string
  end
end
