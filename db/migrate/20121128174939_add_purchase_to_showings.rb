class AddPurchaseToShowings < ActiveRecord::Migration
  def change
    add_column :showings, :purchas, :integer
  end
end
