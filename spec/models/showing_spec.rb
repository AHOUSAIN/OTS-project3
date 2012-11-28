require 'spec_helper'

describe Showing do
 

  
     before(:each) do
      @showing = FactoryGirl.create(:showing)
     end

    it "should validate the presence of movieType" do
      should validate_presence_of :type
    end



    it "should validate the presence of time" do
      should validate_presence_of :time
    end



     it "should create valid MovieShow factory" do
       @showing.should be_valid
      end


 
end
