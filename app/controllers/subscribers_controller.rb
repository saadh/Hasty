class SubscribersController < ApplicationController

	def index
	end

def show 
    @subscriber = Subscriber.find(params[:id])
  end

def display
@subscriber = Subscriber.all
end
  
  def new
  	@subscriber = Subscriber.new
    end

def subscribe
  @subscriber = Subscriber.new
end

def create 
@subscriber = Subscriber.new(params[:subscriber])

  if @subscriber.save 
    flash[:notice] = "Successfully saved subscriber."
    redirect_to @subscriber
      else
      render :action => 'new'
    end
end

end 
