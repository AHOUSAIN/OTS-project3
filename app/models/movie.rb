class Movie < ActiveRecord::Base
  attr_accessible :cast, :description, :duration, :genre, :language, :name, :rating, :photo
  mount_uploader :photo, PhotoUploader
  has_many :showings
  
  
  validates :cast, :description, :duration, :genre, :language, :name, :rating, :presence => true
  validates :duration, :numericality => {:greater_than => 0,:less_than =>180, :only_integer => true } 
  validates :rating, :numericality => {:greater_than => -1,:less_than =>11, :only_integer => true } 
  validates_inclusion_of :genre, :in=> %[Action Adventure Comedy Crime Fantasy Horror Love Thriller Romance Drama], :message=> "is not an option", :allow_nil => true, :allow_blank=> true
  MOVIES = [['Action'], ['Adventure'], ['Comedy'], ['Crime'], ['Fantasy'], ['Horror'], ['Love'], ['Thriller'], ['Romance'], ['Drama']]
 
 
 
  validates_inclusion_of :language, :in=> %[Arabic English Urdu Hindi French], :message=> "is not an option", :allow_nil => true, :allow_blank=> true
  LAN = [['Arabic'], ['English'], ['Urdu'], ['Hindi'], ['French']]
 
  
  
  
  scope :alphabetical, order('name')
  
end
