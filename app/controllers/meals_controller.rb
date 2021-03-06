class MealsController < ApplicationController

  def index
  end 

  def show 
    @meal = Meal.find(params[:id])
  end

  def search 
      #@search = Meal.where("name like?", "%#{params[:meal][:name]}%")
      #@restaurant = Restaurant.where("name like?", "%#{params[:meal][:name]}%")

      @search = Meal.tagged_with(params[:meal][:name])
      @restaurant = Restaurant.tagged_with(params[:meal][:name])
  end


  def search_form
    @search = Meal.new
  end


  def display
  	@meal = Meal.all
  end

  def new
  	@meal = Meal.new
    @meal.build_cook
  end

  def create
  	@meal = Meal.new(params[:meal])
    
  	if @meal.save
      flash[:notice] = "Successfully created meal."
      redirect_to @meal
      else
      render :action => 'new'
    end

   end

 
end

