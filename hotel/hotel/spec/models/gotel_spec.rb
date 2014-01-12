require 'spec_helper'
require 'factory_girl_rails'
describe Gotel do
  context "validates" do
    before(:each) do
      @gotel = FactoryGirl.create(:gotel)
      FactoryGirl.create :location, gotel: @gotel
    end
    it "is valid with valid attributes" do
      @gotel.should be_valid
    end
    it "is invalid without country field" do
      @gotel.location.country = nil
      @gotel.should_not be_valid
    end
    it "is invalid without state field" do
      @gotel.location.state = nil
      @gotel.should_not be_valid
    end
    it "is invalid without city and street field" do
      @gotel.location.city and @gotel.location.street = nil
      @gotel.should_not be_valid
    end
    it "is invalid then content length of this fields greater then 140 symbols" do
      @gotel.location.city and @gotel.location.street and @gotel.location.state and @gotel.location.country = "i"*142
      @gotel.should_not be_valid
    end
    it "is invalid without title field and then this field greater then 100 symbols" do
      @gotel.title = nil and @gotel.title.should_not have(101).characters
      @gotel.should_not be_valid
    end
    it "is invalid without room description and if this field greater than 1500symbols" do
      @gotel.room_description = nil and @gotel.room_description.should_not have(1501).characters
      @gotel.should_not be_valid 
    end
    it "is invalid without breakfast field and must be only YES or NO" do
      @gotel.breakfast = nil and @gotel.breakfast.should_not match /Yes|No/
      @gotel.should_not be_valid
    end
    it "is invalid without price for room " do
      @gotel.price_for_room = nil
      @gotel.should_not be_valid
    end
    it "is invalid then price for room not integer" do
      @gotel.price_for_room.should be_a_kind_of(BigDecimal)
      @gotel.should be_valid
     end 
     it "is invalid if average_rating do not respond" do
       @gotel.should respond_to("average_rating")
       @gotel.should be_valid
     end
  end
    context "associations" do
      it "should have many comments" do
      should have_many(:comments)
      end
      it "should have many ratings" do
      should have_many(:ratings)
      end
      it "should beling to user" do
      should belong_to(:user)
      end
    end
end





