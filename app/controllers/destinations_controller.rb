class DestinationsController < ApplicationController
	def show
    @destination = Destination.find(params[:id])
  end
  
  def edit 
  	@destination = Destination.find(params[:id]) 
	end
	
	def update
    @destination = Destination.find(params[:id])
      if @destination.update(destination_params)
        redirect_to @destination
      else
        render 'edit'
      end
  end
	
	private 
  	def destination_params 
    	params.require(:destination).permit(:name, :description) 
  	end
end
