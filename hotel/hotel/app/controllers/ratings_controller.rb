class RatingsController < ApplicationController
  before_filter :authenticate_user!
  def create
     @gotel = Gotel.find_by_id(params[:rating][:gotel_id])
     puts @gotel.title
            #if current_user.id == @gotel.id
             #   redirect_to gotel_path(@gotel), :alert => "You cannot rate for your own photo"
            #else
            if @rating = current_user.ratings.find_by_gotel_id(params[:rating][:gotel_id])
              redirect_to gotel_path(@gotel), :notice =>"you already rate this gotel"
            else
                @rating = Rating.new(params[:rating])
               @rating.gotel_id = @gotel.id
                @rating.user_id = current_user.id
                if @rating.save
                    respond_to do |format|
                        format.html { redirect_to gotel_path(@gotel), :notice => "Your rating has been saved" }
                        format.js
                    end
                end
            end
  
  
  end

  def update
    @gotel = Gotel.find_by_id(params[:gotel_id])
            if current_user.id == @gotel.id
                redirect_to gotel_path(@gotel), :alert => "You cannot rate for your own photo"
            else
                @rating = Rating.new(params[:rating])
                @rating.gotel_id = @gotel.id
                @rating.user_id = current_user.id
                if @rating.save
                    respond_to do |format|
                        format.html { redirect_to gotel_path(@gotel), :notice => "Your rating has been saved" }
                        format.js
                    end
                end
            end
  end
end
