class SwitchesController < ApplicationController
	def index
	  @switches = Switch.all
	end

	def show
		@switch = Switch.find(params[:id])
	end

	def new
		
	end

	def create
		@switch = Switch.create(switch_params)

		if @switch.save
			redirect_to @switch
		else
			render :new
		end
	end

	private

	def switch_params
		params.require(:switch).permit(:name, :model)
	end
end
