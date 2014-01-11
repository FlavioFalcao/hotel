require 'spec_helper'
require 'factory_girl_rails'
 describe Comment do
  context "validates" do
    before(:each) do
             @comment = FactoryGirl.create(:comment)
        end
        it "is valid with valid attributes" do
              @comment.should be_valid
        end
        it "is invalid without username" do
             @comment.username = nil
             @comment.should_not be_valid
        end
         it "is invalid without content" do
             @comment.content = nil
             @comment.should_not be_valid
        end  
         it "is invalid if length of content greater then 140 characters" do
               @comment.content = "1"*141
               @comment.should_not be_valid
        end
  end
 end