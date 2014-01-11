require 'spec_helper'
describe Rating do
  context "validates" do
    before(:each) do
        @rating = FactoryGirl.create(:rating)
     end
    it "is valid with valid attributes" do
      @rating.should be_valid
    end
    it "is invalid without rating value" do
      @rating.value = nil
      @rating.should_not be_valid
    end
    it "rating value must include 1 2 3 4 5 not other numbers" do
      @rating.value = 7 
      @rating.should_not be_valid
    end
  end
end