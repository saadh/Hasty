class RestaurantsController < ApplicationController

  def show 
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  	@restaurant = Restaurant.new
  end

  def search
    @search = Restaurant.where("tag_list like?", "%#{params[:restaurant][:tag_list]}%")
    # tag_list means field name
    
  end

  def search_form
    @search = Restaurant.new
  end


  def create 
  	@restaurant = Restaurant.new(params[:restaurant])
  	if @restaurant.save
      flash[:notice] = "Successfully created new restaurant."
      redirect_to @restaurant
      else
      render :action => 'new'
    end
end

end

