class User < ActiveRecord::Base
  attr_accessible :account_name, :account_number, :email, :mobile_number, :name, :password,:password_confirmation ,:password_digest
  has_secure_password
  before_save :format_mobile_number
  
  
  
  validates_presence_of :password, :on => :create
  validates :account_name, :account_number, :email, :mobile_number, :name, :presence => true
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mi|biz|info|qa))$/i, :message => "is not a valid format"
  validates_format_of :mobile_number, :with => /^(\+?\d{11}|\+?\d{3}?[-.]?\d{4}[-.]?\d{4})$/ , :message => "it should be the country code followed by the number (11 diggits only)"

  scope :alphabetical, order('name')

  

   private


   def format_mobile_number
     mobile_number = self.mobile_number.to_s
     mobile_number.gsub!(/[^0-9]/, "")
     self.mobile_number = mobile_number  

   end



end
