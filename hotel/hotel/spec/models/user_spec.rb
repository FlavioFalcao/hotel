require 'spec_helper'
require 'factory_girl_rails'

describe User do
  context "validates" do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end
    it "should be valid with valid fields" do
      @user.should be_valid
    end
    it "should be invalid if password is blank" do
      @user.password = nil
      @user.should_not be_valid
    end 
    it "should be invalid if email is blank" do
      @user.email = nil
      @user.should_not be_valid
    end 
    it "is invalid without username" do
      @user.username = nil
      @user.should_not be_valid
    end
  end  
end