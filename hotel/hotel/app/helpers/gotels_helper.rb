module GotelsHelper
  def rating_ballot
    if @rating = current_user.ratings.find_by_gotel_id(params[:id])
        @rating
    else
        current_user.ratings.new
    end
end
end
