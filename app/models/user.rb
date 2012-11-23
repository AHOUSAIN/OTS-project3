class User < ActiveRecord::Base
  attr_accessible :account_name, :account_number, :email, :mobile_number, :name,:password, :password_confirmation ,:password_hash, :password_digest , :password_salt
  
  before_save :encrypt_password
  has_secure_password
    validates_confirmation_of :password
    validates_presence_of :password, :on => :create
    validates_presence_of :email
    validates_uniqueness_of :email
    
    def encrypt_password
        if password.present?
          self.password_salt = BCrypt::Engine.generate_salt
          self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
        end
      end
      
      def self.authenticate(email, password)
        user = find_by_email(email)
        if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
          user
        else
          nil
        end
      end
end
