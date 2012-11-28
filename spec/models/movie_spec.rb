require 'spec_helper'

describe Movie do
<<<<<<< HEAD
        describe "should have a name, genre, duration time, rating, language, cast and description" do
              it {should validate_presence_of(:name)}
               it{should validate_presence_of(:genre)}
               it {should validate_presence_of(:duration)}
               it { should validate_presence_of(:rating)}
               it {should validate_presence_of(:language)}
                 it {should validate_presence_of(:cast)}
               it { should validate_presence_of(:description)}
        end
        
        it "should accept valid duration" do
                should allow_value(1).for(:duration)
                should allow_value(45).for(:duration)
                should allow_value(100).for(:duration)
                should allow_value(170).for(:duration)  
        end
        it "should not accept valid duration" do
                should_not allow_value(0).for(:duration)
                should_not allow_value(-3).for(:duration)
                should_not allow_value(3.14158).for(:duration)
                should_not allow_value(-3.14158).for(:duration)
                should_not allow_value(190).for(:duration)
        end
        
        
        it "should accept valid rating" do
                should allow_value(1).for(:rating)
                should allow_value(9).for(:rating)
                should allow_value(10).for(:rating)
                should allow_value(0).for(:rating)  
        end
        it "should not accept valid rating" do
                          should_not allow_value(-1).for(:rating)
                          should_not allow_value(-3).for(:rating)
                          should_not allow_value(3.14158).for(:rating)
                          should_not allow_value(-3.14158).for(:rating)
                          should_not allow_value(11).for(:rating)
                  end
        
        
=======
        it "should have a name, genre, duration time, rating, language, cast and description" do
                should validate_presence_of(:name)
                should validate_presence_of(:genre)
                should validate_presence_of(:duration)
                should validate_presence_of(:rating)
                should validate_presence_of(:language)
                should validate_presence_of(:cast)
                should validate_presence_of(:description)
        end
        describe "Validates good duration" do 
                #      it{should_not allow_value("02:13").for(:duration)}
                #       it{should allow_value("12:34").for(:duration)}
                #       it{should allow_value("01:34").for(:duration)}
        end
>>>>>>> 6b622f47cdff519ea5c3b963930c258727fcc30f

        describe "Create our factories" do
                before(:each) do
                        @thering = FactoryGirl.create(:movie)
                        @thenotebook = FactoryGirl.create(:movie, :name => "The Note book", :genre => "Romance", :duration => "30", :rating => 4, :language => "English")
                        @thetwilightsage = FactoryGirl.create(:movie, :name=> "The Twilight sage", :genre => "Drama", :duration=> "144", :rating => 3)
                        @skyfall = FactoryGirl.create(:movie, :name=> "Skyfall", :genre => "Action", :duration=> "111", :rating => 7)
                end
<<<<<<< HEAD
                
      it "should create the factories correctly"do
=======
                it "should create the factories correctly"do
>>>>>>> 6b622f47cdff519ea5c3b963930c258727fcc30f
                @thering.should be_valid
                @thenotebook.should be_valid
                @thetwilightsage.should be_valid
                @skyfall.should be_valid

        end
        it "has the right attribute information" do
                @thering.name.should == "The Ring"
                @thenotebook.name.should == "The Note book"
                @thetwilightsage.name.should == "The Twilight sage"
                @skyfall.name.should == "Skyfall"
        end
        it "returns all the record in alphabetical order" do
<<<<<<< HEAD
                Movie.alphabetical.map{|o| o.name}.should == ["Skyfall","The Note book","The Ring","The Twilight sage" ]
        end


        
        it "should valiate the numericality of Duration"do
        should validate_numericality_of(:duration)

        end


         it "should valiate the numericality of Rating"do
              should validate_numericality_of(:rating)
          end 
          
           
          describe "Validates good genre movies" do
            it {should allow_value("Action").for(:genre)}
          end
          
          describe "Rejects genre movies" do
            it {should_not allow_value("bad").for(:genre)}
          end 
          
          describe "Validates good genre movies" do
              it {should allow_value("Arabic").for(:language)}
          end
          
=======
                Movie.alphabetize.map{|o| o.name}.should == ["Skyfall","The Note book","The Ring","The Twilight sage" ]
        end


        it "should accept valid duration" do
                should allow_value(1).for(:duration)
                should allow_value(45).for(:duration)
                should allow_value(100).for(:duration)
                should allow_value(170).for(:duration)  
        end
        it "should not accept valid duration" do
                should_not allow_value(0).for(:duration)
                should_not allow_value(-3).for(:duration)
                should_not allow_value(3.14158).for(:duration)
                should_not allow_value(-3.14158).for(:duration)
                should_not allow_value(190).for(:duration)
        end
        it "should valiate the numericality of Duration"do
        should validate_numericality_of(:duration)

end


        it "should accept valid rating" do
                should allow_value(1).for(:rating)
                should allow_value(9).for(:rating)
                should allow_value(10).for(:rating)
                should allow_value(0).for(:rating)  
        end
        it "should not accept valid rating" do
                          should_not allow_value(-1).for(:rating)
                          should_not allow_value(-3).for(:rating)
                          should_not allow_value(3.14158).for(:rating)
                          should_not allow_value(-3.14158).for(:rating)
                          should_not allow_value(11).for(:rating)
                  end
                  it "should valiate the numericality of Rating"do
                  should validate_numericality_of(:rating)
          
          end  
          describe "Validates good genre movies" do
            it {should allow_value("Action").for(:genre)}
          end
          describe "Rejects genre movies" do
            it {should_not allow_value("bad").for(:genre)}
          end 
          describe "Validates good genre movies" do
              it {should allow_value("Arabic").for(:language)}
            end
>>>>>>> 6b622f47cdff519ea5c3b963930c258727fcc30f
            describe "Rejects genre movies" do
              it {should_not allow_value("bad").for(:language)}
            end
          
          
          
end
end
