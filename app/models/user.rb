class User < ActiveRecord::Base
  attr_accessible :account_name, :account_number, :email, :mobile_number, :name, :password_digest
  has_secure_password
  
  validates_presence_of :password, :on => :create
end
