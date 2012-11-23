class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :mobile_number
      t.string :account_number
      t.string :account_name
      t.string :email
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end
