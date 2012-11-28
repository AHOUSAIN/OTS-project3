class Movie < ActiveRecord::Base
  attr_accessible :cast, :description, :duration, :genre, :language, :name, :rating, :photo
  validates :cast, :description, :duration, :genre, :language, :name, :rating, :presence => true
 mount_uploader :photo, PhotoUploader
  validates :duration, :numericality => {:greater_than => 0,:less_than =>180, :only_integer => true } 
  validates :rating, :numericality => {:greater_than => -1,:less_than =>11, :only_integer => true } 
  validates_inclusion_of :genre, :in=> %[Action Adventure Comedy Crime Fantasy Horror Love Thriller Romance Drama], :message=> "is not an option", :allow_nil => true, :allow_blank=> true
  MOVIES = [['Action'], ['Adventure'], ['Comedy'], ['Crime'], ['Fantasy'], ['Horror'], ['Love'], ['Thriller'], ['Romance'], ['Drama']]
 
 
 
  validates_inclusion_of :language, :in=> %[Arabic English Urdu Hindi French], :message=> "is not an option", :allow_nil => true, :allow_blank=> true
  LAN = [['Arabic'], ['English'], ['Urdu'], ['Hindi'], ['French']]
 
 
#  validates_inclusion_of :language, :in=> %[QA KSA UAE], :message=> "is not an option", :allow_nil => true, :allow_blank=> true
 # COUNTRIES = [['Qatar', 'QA'], ['Saudi Arabia', 'KSA'], ['United Arab Emirates','UAE']]
 
 
 # validates_inclusion_of :language, :in=> %[Arabic English Urdu Hindi French], :message=> "is not an option", :allow_nil => true, :allow_blank=> true
  # LANGUAGES = [['Arabic'], ['English'], ['Urdu'], ['Hindi'], ['French']]
# validates_inclusion_of :genre, :in=> %[Action Adventure Comedy Crime Fantasy Horror Love Thriller Romance Drama], :message=> "is not an option", :allow_nil => true, :allow_blank=> true
  #MOVIES = [['Action'], ['Adventure'], ['Comedy'], ['Crime'], ['Fantasy'], ['Horror'], ['Love'], ['Thriller'], ['Romance'], ['Drama']]
# :maximum =>180,
 #:message => "is not a valid format"
 
  
  
  scope :alphabetize, order('name')
  
end
