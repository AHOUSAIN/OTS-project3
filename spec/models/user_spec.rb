require 'spec_helper'

describe User do
 
    describe "Validation Macros" do
        it {should validate_presence_of(:name)}
        it {should validate_presence_of(:account_name)}
        it {should validate_presence_of(:account_number)}
        it {should validate_presence_of(:mobile_number)}
        it {should validate_presence_of(:email)} 
    end
    
    describe "validates good emails" do
      it {should allow_value("fred@fred.com").for(:email)}
      it {should allow_value("fred@qatar.cmu.edu").for(:email)}
      it {should allow_value("myfred@fred.org").for(:email)}
      it {should allow_value("fred123@fred.gov").for(:email)}
      it {should allow_value("my.fred@fred.net").for(:email)}
    end

    describe "validates bad emails" do
      it {should_not allow_value("fred").for(:email)}
      it {should_not allow_value("fred@qatar,com").for(:email)}
      it {should_not allow_value("fred@fred.uk").for(:email)}
      it {should_not allow_value("my fred123@fred.com").for(:email)}
      it {should_not allow_value("fred@fred.con").for(:email)}
    end
    
    describe "Validate good phone number" do
      it {should allow_value("97455642248").for(:mobile_number)}
    end

    describe "Validate bad phone number" do
      it {should_not allow_value("974-BAD-EXA").for(:mobile_number)}
    end
    
    describe " Creating Objects" do
          before (:each) do
          @afrah = FactoryGirl.create(:user)
          @ola = FactoryGirl.create(:user , :name => "Ola", :mobile_number => "+974-5557-8613")
          @nawal = FactoryGirl.create(:user , :name => "Nawal", :mobile_number => "+974-5557-8615")
          end

      it "validating objects of the factory" do
        @afrah.should be_valid
        @ola.should be_valid
        @nawal.should be_valid
      end
      
      it "should have the right attributes" do
        @nawal.name.should == "Nawal"
        @ola.name.should == "Ola"

      end

      it "should remove all + and - form the phone before save" do
         @ola.mobile_number.should == "97455578613"
         @nawal.mobile_number.should == "97455578615"
      end
      
      it "should return the names in alphabetical order" do
         User.alphabetical.map{|o| o.name}.should == ["Afrah" , "Nawal" , "Ola"]
       end
end

end
