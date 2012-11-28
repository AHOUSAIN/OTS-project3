class Showing < ActiveRecord::Base
  self.inheritance_column = nil
  attr_accessible :movie_id, :type, :purchas,:time
  belongs_to :movie
  
  validates :movie_id ,:type, :time, :presence => true
 
  validates_inclusion_of :type, :in => %[2D 3D IMAX IMAX3D VIP VIPGold] , :message => "its not an option" , :allow_nill => true , :allow_blank => true
  TYPES = [['2D'] , ['3D'] , ['IMAX'] , ['IMAX3D'] , ['VIP'] , ['VIPGold']]
  
  
  scope :chronological, order('time DESC')
  
end
